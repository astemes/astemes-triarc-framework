# Async Handler

Some messages take a long time to handle, and the process should stay responsive while the handling finishes.
In such cases an Async Handler is useful: it handles the message asynchronously while the process keeps handling other messages.

## Use Cases

The most direct use case is offloading a blocking or long-running operation, such as file I/O, a network call, or waiting on hardware, so that it does not stall the handling of other messages sent to the process.

Another common use case is handling a message after a delay.
`Async Action.vi` then waits for the delay to elapse and sends the message to the process, which handles it when the delay is over, without blocking the process loop while waiting.

## Using an Async Handler

To add asynchronous handling to a process, make the host process class implement the `Async Handler` interface and override `Async Action.vi` with the action.
To launch the action, call `Launch Async Handler.vi`.
It must be called from inside the process loop, typically from `Handle Messages.vi`. Called from outside, it returns error 9509.

`Launch Async Handler.vi` takes a `Message` string and a `Message Data` variant, which are passed to `Async Action.vi`.
Use them to select between several actions and to pass parameters.
Any number of async actions can run at the same time, running the same or different actions.

The example below shows how the `Application` class launches an async handler to shut down a process.

![Launch handler](img/launch_async_handler.png)

## Behavior

- `Async Action.vi` runs once per launch, in parallel to the process loop.
- An error returned by `Async Action.vi` is passed to the error handler of the process. Errors and warnings are also logged.
- The process broadcasts an `Async Handler` message when an async action starts, runs and finishes.
- **The framework does not stop a running async action when the process stops.**
  An action that may run for a long time must stop by itself, for example by watching for the `Lifecycle` broadcast of the process or by polling `Get Lifecycle State.vi`.

## State Data

As for [helper loops](../40_Helper%20Loops/Helper%20Loops.md#state-data), the class data in `Async Action.vi` is a snapshot from when the action was launched.
Changes to the state of the process are not seen by a running action, and the action cannot change the state of the process directly.
Report results back to the process by calling its API VIs, so that they send messages to the process.
Call `Leave Process Loop.vi` on the class data in `Async Action.vi` before calling API VIs.
The action is launched from inside the process loop, and without this call `Get Lifecycle State.vi` may still report `Handle Message` mode, so the API VIs would work on the snapshot instead of sending messages.

Never use the class data in `Async Action.vi` to access resources that the process loop also uses, such as a driver object.
Everything that changes the state of the process should go through messages.
