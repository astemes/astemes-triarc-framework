# Error Handling

Error handling is important for building reliable systems.
Triarc provides a flexible error handling mechanism by delegating error handling to an error handler that you configure.

## Implementing an Error Handler

To implement an error handler, create a class that implements the `Error Handler Interface` provided by the framework.
The interface requires the class to override `Handle Errors.vi` with the error handling logic.

![Error Handler Interface](img/error_handler_interface.PNG)

`Handle Errors.vi` receives the error cluster and a `Location` string that describes where the error occurred.
An implementation should:

- handle both errors and warnings that are passed to it,
- never pass an error out. The error has been handled when the VI returns,
- return quickly, because it is called from the process loop of the process that had the error,
- not log the error. Logging is the job of the log handlers, see [Logging Errors](#logging-errors).

Typical error handlers show a dialog during testing, ignore selected error codes, or reconnect a device when a known communication error occurs.

## Error Handling in the Process

The `Process` class also implements the `Error Handler Interface`, but delegates the handling of the error to the configured error handler.
This means you can call `Handle Errors.vi` on any process wire to have the error handled.

The `Location` input of `Handle Errors.vi` specifies where the error occurred.
When an error occurs in `Handle Messages.vi` of a process, the framework calls `Handle Errors.vi` with a location that contains the qualified name of the process followed by the message being handled.

The framework also handles errors from helper loops and async handlers of the process.
Call `Handle Errors.vi` yourself in loops that you own and where nobody else would see the error, for example the event loop of a `View.vi`.

## Setting an Error Handler

Configure an error handler for a process with `Set Error Handler.vi`.
This works recursively for the processes in an application, regardless of whether a process was added to the application before or after the error handler was configured.

![Setting an error handler](img/setting_an_error_handler.png)

After the error handler has been set, any error passed to `Handle Errors.vi` is delegated to `Handle Errors.vi` of the configured error handler.
This applies whether the error occurs in the process loop or is passed explicitly on another process wire.
An error handler that, for example, displays every error during testing can therefore be replaced by something more appropriate for production.

## Error Handling in an Application

When `Handle Errors.vi` of a process is called, the error is delegated to the error handler configured with `Set Error Handler.vi`.
If no error handler has been set for the process, the error is delegated to the context of the process.
The error is then passed to the `Application` that owns the process, and to its configured error handler.

This continues recursively up the process tree, and the first context with a configured error handler handles the error.
It is therefore enough to configure the error handler for the top level `Application`, and all processes in the hierarchy delegate error handling to it.
If a process needs different error handling, configure another error handler for that process. This is how you can implement, for example, supervisors.

## Logging Errors

The concepts of error handling and logging are separated in Triarc, and an error handler should in most cases not log errors.
Logging should be done by a log handler, because it is often useful to see errors in the context of other log entries.
The framework passes errors and warnings to the log handlers of the process, both when they occur in the process loop and when `Handle Errors.vi` is called explicitly on a process wire.
See [Logging](../35_Logging/Logging.md).

## Framework Error Codes

The framework uses error codes 9500 to 9515.
The error code file is installed with the framework, so the descriptions are shown in the LabVIEW error dialogs.

| Code | Description |
|---|---|
| 9500 | Process not initialized. |
| 9501 | Timed out stopping process. |
| 9502 | Process was stopped while waiting for request. |
| 9503 | Unknown command received. The message was not handled by any class in the hierarchy. |
| 9504 | Process cleared while running. |
| 9505 | Timed out waiting for request. |
| 9506 | Trying to make request to process which is not running. |
| 9507 | Request to self is not allowed from inside process loop. |
| 9508 | Sending to self should be avoided from inside process loop. |
| 9509 | Action not allowed from outside process loop. |
| 9510 | Response message not called from within state receiving request or request timed out. |
| 9511 | Process already initialized. |
| 9512 | Could not find requested process. |
| 9514 | Trying to start process which is already running. |
| 9515 | The Request caused an error in the process. |
