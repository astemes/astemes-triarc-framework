# Process

The `Process` is the fundamental building block of a Triarc application, similar to an actor in Actor Framework or a module in DQMH.
A process is a class. Its private data is the state of the process, and the framework runs a message loop that owns this state.

## Process Lifecycle

The framework keeps track of the lifecycle state of each process.
The lifecycle state is a core concept that the framework uses to keep itself consistent, for example to refuse a request to a process that is not running.
The normal evolution of the lifecycle is shown below.

![Triarc Process Lifecycle](img/lifecycle.png)

| State | Meaning |
|---|---|
| `Uninitialized` | The process object has been created but `Init.vi` has not been called. |
| `Initialized` | `Init.vi` has been called. Messages can be sent, but they are not handled until the process is started. |
| `Started` | `Start.vi` has launched the process loop, which has not yet handled the `Start` message. |
| `Running` | The process loop has handled the `Start` message and is handling messages. |
| `Stopped` | `Stop.vi` has been called. Messages already in the queue are still handled. |
| `Finished` | The process loop has handled the `Stop` message and exited. The process can be started again or cleared. |

A process always starts as `Uninitialized` and moves to `Initialized` when `Init.vi` is called.
`Init.vi` is a dynamic dispatch method. Override it to allocate resources and open references used by the process.
Do not configure hardware or start other processes in `Init.vi`. Do that when the process starts.

When the process is started, the process loop is launched asynchronously.
`Start.vi` waits until the process has handled the `Start` message and reached the `Running` state, or until the timeout expires.

The process then lives its own life in the process loop until it is stopped with `Stop.vi`.
`Stop.vi` sends a `Stop` message and waits until the process loop has finished, or until the timeout expires.
The process object returned by `Stop.vi` contains the state of the process as it was when the loop finished.

A finished process can be restarted with `Start.vi`, or cleared with `Clear.vi` to release the resources allocated in `Init.vi`.
Restarting a process is a supported use case.

The framework checks the lifecycle state and returns an error when a method is called in the wrong state:

| Situation | Error |
|---|---|
| `Start.vi`, `Stop.vi` and most other methods called on an uninitialized process | 9500, Process not initialized |
| `Init.vi` called on an initialized process | 9511, Process already initialized |
| `Start.vi` called on a running process | 9514, Trying to start process which is already running |
| `Clear.vi` called on a running process | 9504, Process cleared while running |

See [Error Handling](../30_Error%20Handling/Error%20Handling.md#framework-error-codes) for all framework error codes.

### Reading and Waiting for the Lifecycle State

`Get Lifecycle State.vi` returns the current lifecycle state.
`Wait for Life Cycle State.vi` waits until the process reaches a given state, or until the timeout expires.

Every change of lifecycle state is also broadcast with the message `Lifecycle`, so other processes and views can follow it.
See [Broadcasting](../28_Broadcasting/Broadcasting.md#framework-broadcasts).

## The Process Loop

When a `Process` is started, the process loop is launched asynchronously.
Each process keeps its own state in the process loop.
A very important principle is that the state may only be accessed from within the process loop.
There is no limit on the number of processes running at the same time, and many processes of the same class may run in parallel.

The process loop is essentially a queued message handler.
It receives the messages enqueued by API VIs and passes each of them to `Handle Messages.vi`.
The VI running the loop is private to the framework.
To add functionality to a process, you override `Handle Messages.vi`.

The framework adds debugging, logging and error handling to the process loop.
An error returned by `Handle Messages.vi` is passed to the error handler of the process, with the qualified name of the process and the message as location.

## The `Handle Messages.vi`

To make a process do something useful, override `Handle Messages.vi`.
The VI is called in the process loop for every message received, and you define the behavior by adding cases to its case structure.
The process data should only be accessed in `Handle Messages.vi`, which makes it safe to read and update the data without race conditions.

![Triarc Message Handler](img/HandleMessages.png)

The `Default` case should always call `Call Parent Class Method` to pass unhandled messages to the parent.
This keeps the message handler free of repetition: only the specific responsibility of the process is in its message handler.
As the number of cases in a `Handle Messages.vi` is usually small, it is easy to read.

![Default Case](img/default_case.png)

The `Process` class itself handles the messages `Init`, `Start`, `Stop`, `Trigger Broadcast`, `Set Error Handler` and `Add Log Handler`.
A message that no class in the hierarchy handles causes error 9503, Unknown command received.

You can add behavior to a framework message by adding its case to your `Handle Messages.vi` and calling the parent method from that case.
For `Start`, call the parent method last: the parent sets the `Running` state, which releases the `Start.vi` that is waiting.
For `Stop`, do your clean-up (for example disconnecting hardware) and then call the parent method. The parent always stops the process, even if an error is wired to it.

See [Handling Messages](../26_Handling%20Messages/Handling%20Messages.md) for how to write API VIs and message cases.

## The `Read Configuration.vi`

Configuration management is a central issue for most test systems, so it is part of the framework.
`Read Configuration.vi` is a protected dynamic dispatch VI that you can override to load the configuration of the process.
The framework calls it from the process loop when it handles the `Init` message, which is the first message handled when the process starts.

Set the configured values directly in the class data in `Read Configuration.vi`.
Do not send messages to the process from it: other messages may already be queued and would then be handled before the configuration has been loaded.
See [Configuration](../80_Configuration/Configuration.md).

## Process Context

When a process is added to an application, the process knows its context.
If process A is added to application B, then B is the context of A.
If application B is in turn added to application C, the context of A is still B, and the context of B is C.
If C is the top level application, it has no context.

`Get Context.vi` returns the context of a process, and a `Top Level?` flag that is true when the process has no context.
Tracking the context lets a process communicate back to its owner.
To do that in a useful way, the process makes some assertions about the context it runs in, for example that the context implements a given interface.

The context is also used to build the qualified name of the process, and to find an error handler or log handler when the process has none of its own.

## Inside or Outside the Process Loop

The same process object can be used both inside the process loop, in `Handle Messages.vi`, and outside it, in the code that calls the API.
`Get Lifecycle State.vi` returns an `API Mode` that tells the two apart:

| `API Mode` | Meaning |
|---|---|
| `Send Message` | The VI is called from outside the process loop. It should send a message to the process. |
| `Handle Message` | The VI is called from inside the process loop. It should do the work directly and must not send messages to its own process. |

Some framework methods are only allowed in one of the modes.
`Launch Helper Loop.vi`, `Launch Async Handler.vi`, `Stop Helper Loops.vi` and `Response Message.vi` must be called from inside the process loop (error 9509).
`Request Message.vi` must not be called from inside the process loop of the process it requests from, because it would wait for itself (error 9507).

The `API Mode` is carried by value on the process wire.
If you branch the process wire inside the process loop and pass the branch to code that runs outside the loop, call `Leave Process Loop.vi` on the branch first.
`Get Lifecycle State.vi` then returns `Send Message` for that branch, so API VIs called on it send messages instead of touching the process data.
Helper loops do this for you.
