# Agent Guide

This page is for AI coding agents that read, review or change LabVIEW code built on the Triarc Framework (TF), and for the developers who instruct them.
It condenses the rest of this documentation into rules and facts, and adds the review pitfalls that agents tend to report by mistake.

To make an agent use it, add a line like this to the `AGENTS.md` or `CLAUDE.md` file of your project:

```markdown
This project uses the Astemes Triarc Framework. Read https://astemes.github.io/astemes-triarc-framework/95_Agent%20Guide/Agent%20Guide/ before reading or changing process code.
```

The installed framework is in `<vi.lib>\Astemes\Triarc Framework\` (`TF.lvlib`), the test suite in `<vi.lib>\Astemes\Triarc Framework Test Suite\`, and the error codes in `<user.lib>\errors\Astemes-Triarc-Framework-errors.txt`.
Where this page and the installed code disagree, trust the code.

## Classes and Interfaces

```
Base                     name (immutable, set by Init), config file path and reference
└── Process              implements Error Handler Interface, Logging
    ├── View             adds View.vi (front panel), Show Panel / Hide Panel
    └── Application      implements Async Handler; owns other processes
```

**Application inherits from Process, not from View.** An application has no panel of its own.

| Interface | Icon banner | Adds |
|---|---|---|
| `Helper Loop` | HELPER | `Helper Action.vi`, run periodically in parallel to the process loop |
| `Async Handler` | ASYNC | `Async Action.vi`, run once per launch in parallel to the process loop |
| `Configuration` | | Abstract read and write of configuration values |
| `Configuration File` | .INIFILE | `Configuration` on an ini file, one section per object. The class must inherit from `Base` |
| `Logging` | LOG | `Log.vi` and the `Log Debug/Info/Warning/Error/Critical` VIs. Every process has it |
| `Error Handler Interface` | ERROR | `Handle Errors.vi`. Every process has it |
| `Callback` | CALBCK | Callback for `Async Request Message.vi` |

The icon banners APP, VIEW, PROCES and BASE show the base class of a framework class at a glance.
In `.lvclass` XML, `<Item Type="Parent">` lists only the direct parent and the interfaces the class declares itself. Follow the ancestors recursively to get the full set.

`Broadcast Event Helpers` is deprecated. Don't use it in new code.

## Lifecycle and Message Handling

- **Lifecycle:** `Uninitialized` → `Init.vi` → `Initialized` → `Start.vi` → `Started` → `Running` → `Stop.vi` → `Stopped` → `Finished` → `Clear.vi`. A process can be restarted.
  - `Start.vi` and `Stop.vi` block until the process reaches the state.
  - The `Lifecycle` broadcast also reports `Cleared`.
- **Message order:** the first message handled is always the framework `Init` message, then the messages queued before start, then `Start`. All messages have the same priority.
  - Messages sent after `Stop.vi` is called, but before `Stop` is handled, are still handled.
  - `Clear.vi` terminates immediately (error 9504 if the process was running).
- **Handling messages:** a process handles messages in its override of the protected `Handle Messages.vi`, with one case per message string.
  - The **Default case must call the parent** (`Call Parent Class Method`).
  - A message that no class handles gives error 9503.
  - The process loop is the only place where class data may be unbundled and bundled.
- **The parent `Stop` handling always stops the process, even when an error is wired in.** Wiring the error from, for example, a `Disconnect` into the parent `Stop` is correct for a process.
  **For an `Application` it is not:** the `Application` `Stop` handling passes the incoming error to `Stop.vi` of each owned process, and `Stop.vi` does nothing when it receives an error. The application stops, but its processes keep running until `Clear.vi` terminates them. Handle or clear the error before calling the parent `Stop` in an application.
- **Handle each message atomically.** Don't send messages to yourself to build multi-step behaviour, because other messages can interleave. Sending to self from inside the loop gives warning 9508, and requesting from self gives error 9507. Use state plus a helper loop or an async handler instead.

## API VIs

Every public method of a process is one VI with two modes.
It starts with `Get Lifecycle State.vi` and a case structure on its `API Mode` output:

| `API Mode` | When | Does |
|---|---|---|
| `Send Message` | Called from outside the process loop: another process, a view, a test | `Send Message.vi` (fire and forget) or `Request Message.vi` (waits for a response), with the message name as a string constant |
| `Handle Message` | Called from inside the process loop, from `Handle Messages.vi` | The real work: update state, call drivers, log, broadcast |

`Handle Messages.vi` converts `Message Data` with `Variant To Data` and calls the **same** public VI, which is then in `Handle Message` mode.
Right-click a process class and select **Generate API VI...** to create one. See [Handling Messages](../26_Handling%20Messages/Handling%20Messages.md).

- The string constant in the `Send Message` case must match the `Handle Messages.vi` case selector **exactly**. The VI name and the message name can differ, so check both sides when renaming either.
- The `Variant To Data` type must match what the sender puts in `Message Data`.
- Getters and setters generated by the IDE integration use `TRIARC_ERROR_IN` / `TRIARC_ERROR_OUT` as terminal names. That is normal.
- `Leave Process Loop.vi` marks a wire branch as outside the loop. After it, `Get Lifecycle State.vi` reports `Send Message`, so API VIs called on that branch send messages instead of working on a copy of the class data.

## Requests

- `Request Message.vi` blocks, with a timeout in ms. `Async Request Message.vi` takes a `Callback` and does not block.
- The receiver answers with `Response Message.vi` in the case that handles the request. It must be called on **every** path, including on error, or the caller waits for the full timeout (error 9505).
- Calling `Response Message.vi` outside the case that received the request gives error 9510.
- An error in the handling is returned to the caller as error 9515.
- A request to a process that is not running gives error 9506, and a process that stops during a request gives error 9502.
- Make the timeout longer than the worst-case handling time. A timeout of `-1` waits forever, so avoid it for hardware.

See [Requests](../29_Requests/Requests.md).

## Broadcasts

- One-to-many, through a framework-managed user event with a fixed data type: a message string and a variant.
- Use `Broadcast Message.vi` to send. To receive, use `Register for Broadcast Events.vi` or `Get Broadcast Event.vi`; for an application, use `Register for Broadcasting Events Recursively.vi`.
- The framework broadcasts `Lifecycle`, `Stop` (views must stop on it), `View Panel` (Shown/Hidden), `Process Added`/`Process Removed`, `Helper Loop` and `Async Handler`.
- **`Trigger Broadcast`**: a process should handle it by re-broadcasting its current state, so that a new view or listener gets the current values.

See [Broadcasting](../28_Broadcasting/Broadcasting.md).

## Applications and Context

- Use `Add Process.vi` to add a process to an application.
- `Init.vi` sets the name of a process; without a name, the process gets its class name. Initializing twice gives error 9511.
- `Get Context.vi` returns the owning application, which is the direct owner only.
- `Get Process.vi` finds a process by name or by qualified name. A process that is not found gives error 9512.
- The **qualified name** is the owner chain joined with `::`, for example `Main::Motion::Source`. It is also the ini section name of the process.
- The lifecycle follows the owner, recursively. **A process added to an application that is already running is not started automatically.** Starting a process that is already running gives error 9514.
- Error handlers (`Set Error Handler.vi`) and log handlers (`Add Log Handler.vi`) set on an application apply to all owned processes, recursively, including processes added later. A process without an error handler passes the error to its context, and so on up the tree.
- An owner usually creates its processes in `Read Configuration.vi`, often with names read from a list key in its own section.

See [Application](../23_Application/Application.md).

## Configuration

- `Read Configuration.vi` (protected) is called by the framework in the process loop when `Init` is handled. Store the values directly in the class data.
- Wrap many reads in one `Open Config.vi` / `Close Config.vi` pair. Without the pair, each read opens and closes the file.
- Each object can access only its own section.
- **A missing key is written to the file with the default value** wired to the read VI, and a missing file is created. A key that is absent from the file is therefore not a bug. Check instead that each wired default is sensible: an unwired default is the type default, such as 0 or an empty string.
- Writes are serialized, one writer at a time, so concurrent processes don't overwrite each other.
- Key and message names in an application can be misspelled and still be live. Change both the file and the code, or neither.

See [Configuration](../80_Configuration/Configuration.md).

## Helper Loops and Async Handlers

- **Helper loop:** implement `Helper Action.vi` (outputs `Loop Period [ms]` and `Exit?`) and start it from `Handle Messages.vi` with `Launch Helper Loop.vi`.
  - Several helper loops can run at once.
  - `Stop Helper Loops.vi` stops all of them; there is no selective stop. The framework stops them when the process finishes or is cleared.
  - Use it for periodic work that must end with the process.
- **Async handler:** implement `Async Action.vi` and start it with `Launch Async Handler.vi`.
  - The launch must be called from inside the process loop, or it gives error 9509.
  - Use it for blocking I/O, network calls, waiting on hardware and delayed messages.
  - Each launch runs the action once, and its errors go to the error handler of the process.
  - **The framework does not stop a running async action when the process stops.** A long action must stop by itself.
- **The class data in both is a snapshot from the launch.** It does not see later state changes and cannot change the state of the process.
  - Report back by calling API VIs. In an async action, call `Leave Process Loop.vi` on the class data first.
  - Never use a driver object or another resource that the process loop also uses.
- **Review points for a self-relaunching async chain**, used for periodic polling:
  - The period is stored and greater than 0. A period of 0 gives a busy loop.
  - The chain stops when the resource disconnects.
  - The chain relaunches after an error.
  - No duplicate chains start after a quick disconnect and reconnect.
  - The entry VI is private.

See [Helper Loops](../40_Helper%20Loops/Helper%20Loops.md) and [Async Handler](../45_Async%20Handler/Async%20Handler.md).

## Views

- `View.vi` must set its own VI reference at start (`Set View VI Reference.vi`) and must stop when `Stop` is broadcast. The test suite asserts both.
- A `Panel Close?` filter usually calls `Hide Panel.vi` and discards the close.
- A view sends to its process by calling API VIs. The process reaches the view through broadcasts.

See [View](../24_View/View.md).

## Errors and Logging

- The framework error codes are 9500–9515. See [Error Handling](../30_Error%20Handling/Error%20Handling.md).
- `Handle Errors.vi`, with a `Location` string, reports to the error handler of the process. Call it in loops you own, such as view event loops, where nothing else sees the error.
- Errors in `Handle Messages.vi` get the qualified name and the message as their location.
- Error handling and logging are separate: an error handler should not log.
- `Log Debug` logs only when the conditional disable symbol `DEBUG` is `TRUE`.
- `Log Info` is skipped if an upstream error is present.
- With `DEBUG=TRUE`, the framework logs every message.

See [Logging](../35_Logging/Logging.md).

## Testing

The installed test suite contains LUnit test classes that test that a process meets the framework requirements: `Base Test`, `Process Test`, `View Test`, `Application Test` and `Error Handler Interface Test`, with mock error and log handlers.
See [Testing](../60_Testing/Testing.md).

## Reading Triarc Code

VIs are binary files. The labview-mcp tools or a similar LabVIEW integration can export a VI as AIXML (a text form of the diagram).

- In an export, framework calls appear as `target="TF.lvlib\3AProcess.lvclass\3A<VI>.vi"`, where `\3A` is `:`.
- To trace messages, grep for `Get Lifecycle State`, `Send Message`, `Request Message` and `CaseFrame selector=`.
- The first load of a class member loads the whole class hierarchy and can take minutes.
- Exporter quirks to confirm on the real diagram before you report a bug: a For-loop `count` that references its own uid, `mode="index"` on scalar tunnels, and `cond=` on output tunnels.
- Don't save framework VIs in `vi.lib`. Changes there are lost on the next package install.

## Review Pitfalls

Don't report these as findings:

- **A key missing from the configuration file.** It is added with its default.
- **An error wired into the parent `Stop` of a process.** The process stops anyway. In an `Application`, it is a finding: the owned processes are not stopped.
- **A message name that differs from the API VI name.** Check that the two sides match each other, not that they match the VI name.
- **A misspelled message or key name.** It may be live: report it, but don't fix one side only.
- **`TRIARC_ERROR_IN` / `TRIARC_ERROR_OUT` terminal names.** They come from the scripting tools.
