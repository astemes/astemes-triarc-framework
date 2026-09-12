# Async Handler

Some messages may take a significant amount of time to process and it may be desirable for the process to remain responsive while waiting for the handling of the message to finish.
In such cases, an Async Handler is useful as it makes it possible to handle the message asynchronously while the process remains responsive.

## Use cases

The most direct use case is offloading a blocking or long-running operation, such as file I/O, a network call, or waiting on hardware, so that it does not stall the handling of other messages sent to the process.

Another common use case is handling a message after a given timeout. In this case, the `Async Action.vi` simply waits for the timeout to elapse and then queues the message back to the process, so that it is handled once the timeout has occurred, without blocking the process loop while waiting.

## Using an Async Handler

To add asynchronous handling to a process, the host process should implement the `Async Handler` and override the `Async Action.vi` to define an action.
To launch the asynchronous handler, call the `Launch Async Handler.vi`.
An example is shown below where the `Application` class lauches an asynchronous handler to shutdown a process.

![Launch handler](img/launch_async_handler.png)