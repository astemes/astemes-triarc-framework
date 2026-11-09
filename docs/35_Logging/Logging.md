# Logging

Logging gives insight into a running system, both during development and when it is deployed.
Most modern programming languages provide the scaffolding for writing log information, but LabVIEW does not.
Triarc provides a powerful and flexible logging mechanism.

## Logging API

The logging API can be used with any Triarc process. It consists of VIs for logging messages with different severity levels.

![Logging API](img/Logging_api.png)

| VI | Level | Logged when |
|---|---|---|
| `Log Debug.vi` | `DEBUG` | Only if the conditional disable symbol `DEBUG` is `TRUE` for the project. Otherwise the VI does nothing. |
| `Log Info.vi` | `INFO` | Only if there is no error on `error in`. |
| `Log Warning.vi` | `WARNING` | For unexpected events that the software can recover from. |
| `Log Error.vi` | `ERROR` | Only if there is an error on `error in`. The error is included in the entry. |
| `Log Critical.vi` | `CRITICAL` | Only if there is an error on `error in`. Use it for errors that the program may not be able to recover from. |

Each entry contains the level, the message and the qualified name of the process that logged it.
Logging is not a substitute for error handling: an error that is logged must still be handled.

## Framework Events

The framework calls the logging API at certain events, such as starting and stopping processes.
These events are logged at the `INFO` level:

- `Started`: the process loop has been launched.
- `Running`: the process has handled the `Start` message.
- `Stopped`: the process has been asked to stop.
- `Finished`: the process loop has finished.

These entries let you see whether errors and other events occur during start-up, execution or shutdown of the process.

The framework passes errors and warnings to the log handlers as they occur, at the `ERROR` or `WARNING` level.
This applies both to errors in the process loop and to errors passed to `Handle Errors.vi` explicitly on a process wire outside the loop.

If the `DEBUG` conditional disable symbol is `TRUE`, the framework also logs every message sent, received, requested, responded to and broadcast, in the order it happens.

## Handling Log Messages

What to do with logged messages is up to the user of the framework.
The framework delegates the logging to classes that implement the `Logging` interface, called log handlers.
Configure a log handler with `Add Log Handler.vi`. Several log handlers can be configured at the same time, and every entry is passed to all of them.

Log handlers added to an application apply to all processes in it, recursively, including processes added later.
A process without a log handler of its own passes its entries to its context.

## Implementing a Log Handler

To implement a log handler, create a class that implements the `Logging` interface.
The protected method `Log.vi` must be overridden to define what to do with an entry.
It receives the `Level`, the `Message` and the `Source` of the entry.
Common implementations display the log in a text indicator or write it to a file.

The process filters the entries by level before they reach the log handler, so a log handler should log every entry it receives without further filtering.
A log handler is called from the process that logs, so it should return quickly.
A log handler that writes to a slow medium can be implemented as a process, and its `Log.vi` can send the entry to that process.

The Coffee Shop example application has a basic log handler.

## Logging Severity

There are five severity levels.
They are available through static VIs in the `Logging` interface, called `Log Debug.vi`, `Log Info.vi`, `Log Warning.vi`, `Log Error.vi`, and `Log Critical.vi`.

The meaning of the levels in a Triarc process is:

- `DEBUG`: detailed information for diagnosing problems. Only logged if the `DEBUG` conditional disable symbol is `TRUE`.
- `INFO`: confirmation that the application is running as expected. If an error occurs upstream of `Log Info.vi`, nothing is logged.
- `WARNING`: something unexpected happened, or a problem may occur soon, but the software still works as expected. The framework logs warnings (an error cluster with status `FALSE` and a non-zero code) that occur in the process at this level.
- `ERROR`: the software could not perform some function. The framework logs errors that occur in the process at this level.
- `CRITICAL`: a serious error, indicating that the program itself may be unable to continue running. Logged when called with an upstream error. Not used by the framework.
