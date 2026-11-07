# Notes for Agents Working on This Repository

These notes are for an agent that changes, documents or tests the Astemes Triarc Framework (TF) itself.

**Read [`docs/95_Agent Guide/Agent Guide.md`](docs/95_Agent%20Guide/Agent%20Guide.md) first.**
It covers how the framework behaves: classes, lifecycle, the API VI pattern, requests, broadcasts, configuration, error codes, and the review pitfalls the maintainer has already corrected.
It is published with the documentation for framework users, so keep it user facing; repository-specific notes belong here.

Where these notes disagree with the code, trust the code.

## Repository

| What | Where |
|---|---|
| Framework source | `source/Framework/` (`TF.lvlib`) |
| Framework test suite (shipped to users) | `source/Framework Test Suite/` |
| IDE integration (Tools » Triarc menu, right-click scripting) | `source/IDE Integration/` |
| Development tests (LUnit) | `tests/`, run through `source/Test Suite.lvproj` |
| Main project | `source/TF.lvproj`. The `TF` source distribution build is what the package installs |
| Package | `source/Triarc Framework.vipb` |
| Error codes | `source/Astemes-Triarc-Framework-errors.txt`, installed to `<user.lib>\errors` |
| User documentation | `docs/` (MkDocs) |
| CI | `.github/workflows/ci.yml` (LUnit on push), `release.yml` (build, VIP and docs on tag) |

Related repositories: [Triarc Debugger](https://github.com/Astemes/astemes-triarc-debugger), [examples](https://github.com/Astemes/astemes-triarc-examples), and the add-ons `astemes-triarc-error-handling` and `astemes-triarc-logging`.

## Rules

- **The source is saved in LabVIEW 2020 SP1.** The package is built for LabVIEW 20.0 on an `lv2020` runner. Never save framework files from a newer LabVIEW, because that converts them and breaks the build. A newer LabVIEW may open them read-only for inspection or for running the tests.
- **Only files in `TF.lvproj` reach users.** The VI package is built from the `TF` source distribution. A file at the repository root, such as this one, is not installed.
- **Everything in `docs/` is published** to GitHub Pages with `mkdocs gh-deploy`. Don't put working notes, client names or internal material there.
- **Docs layout:**
  - The navigation is generated from the folder prefixes (`10_Introduction`, `22_Process`, …) by the `buildDocs` action in `astemes-github-actions`.
  - Links between pages are relative and URL-encoded, for example `../40_Helper%20Loops/Helper%20Loops.md`.
  - Pages are served with directory URLs, so `docs/22_Process/Process.md` is served at `/22_Process/Process/`. `docs/llms.txt` links to these URLs; update it when a page is added or renamed.
- Don't commit unless asked. The default branch is `main`.

## Testing

- CI runs LUnit on the `tests` folder.
- `source/Test Suite.lvproj` (and `TF.lvproj`) run through labview-mcp's `lvai_run_lunit_tests` found 91 tests on 2026-11-07: 78 passed, 13 skipped, none failed.
- That run does **not** include the test classes that inherit from the shipped test suite (`Application Dev Test`, `Process Dev Test`, `View Dev Test`, `Mock Process Test`). They hold most of the application and lifecycle tests, and the runner reports "no tests" for them. Run them from the LUnit window in the IDE.
- With labview-mcp, `lvai_run_lunit_tests` on the project works. Write the report and the helper VI to a scratch folder, not into the repository.

## Working With the Binary Files

VIs and controls are binary RSRC files, so they can't be edited as text.

### Reading

- **labview-mcp:**
  - Use `lvai_convert_vi_to_aixml` for the diagram, and `lvai_describe_vi` for the description, controls and subVIs.
  - The first call on a class member loads the whole hierarchy and can take minutes, so raise `timeoutSeconds`.
  - `lvai_describe_vi` does not accept `.ctl` files ("Unsupported VI type").
  - The gRPC service runs only while Nigel is open in that LabVIEW. If `lvai_status` returns `DeadlineExceeded`, ask the user to open Nigel or restart LabVIEW, then call `lvai_ensure_labview`.
  - In LabVIEW 2025, `ConvertVIToAIXML` returned "Unimplemented"; LabVIEW 2026 32-bit worked.
- **pylabview** (`readRSRC.py -x`, bundled with labview-mcp) crashes on many framework VIs with a `TypeError` in `checkSanity`.
- **Without any tool:**
  - The front panel and block diagram heaps (`FPHb`, `BDHb`) are zlib-compressed after a 4-byte prefix and contain the labels and comments.
  - String constants have a 4-byte big-endian length prefix.
  - The VI description is the `STRG` block: a u32 length, then cp1252 text with `\n` line endings.

### Changing VI Descriptions Without LabVIEW

Resaving in a newer LabVIEW is not allowed, and regenerating from AIXML loses the layout and the icon. Descriptions can still be changed by rewriting only the `STRG` block. All values are big-endian.

- **Header:** the 32-byte header holds info offset, info size, data offset and data size at bytes 16–32. It is repeated at the start of the info area.
- **Info area:**
  - A block-info header: 5 × u32, of which the 4th is the block-info offset and the 5th its size.
  - Then block count − 1, then the block headers (ident, count − 1, offset).
  - Then the section starts, 20 bytes each: index, name offset, reserved, data offset, reserved.
- **Section data:** a u32 size followed by the data, padded to 4 bytes.
- **Replacing the block:** write the new `STRG` data and shift the data offsets of the sections that follow it.
- **Adding the block** (files without one):
  - Add a block header and a section start.
  - Shift each block header offset by 12, increment the count, and add 32 to the block-info size.
  - Then update both headers.
- **Verified:** a round trip of all 108 public and protected VIs gave byte-identical files. LabVIEW loads the patched files and shows the new descriptions. Run the test suite after a batch of changes.

A VI that is open in LabVIEW cannot be overwritten (error 1051).

### Description Style

Descriptions of public and protected framework VIs:

- State what the VI does in one or two sentences, and name the message it sends or the broadcast it causes.
- Say whether it must be called inside or outside the process loop, and list the framework errors it can return.
- Use plain text, without HTML. Terminal descriptions are separate.
