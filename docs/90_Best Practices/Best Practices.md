# Best Practices

## Don't Marry the Framework

Triarc should make building your application easier, not become a dependency your domain logic cannot live without.
Keep the actual business logic - algorithms, calculations, domain rules - in plain VIs and classes that know nothing about `Process`, `View`, or messaging.
Let the `Process` and `View` act as a thin integration layer that calls into this core logic.
This keeps the core logic portable, easy to reuse outside the framework, and cheap to test in isolation.

## A good Process is an Idle Process

To ensure responsiveness of the system, processes should spend most of their time waiting for messages.
To enable this, heavy processing should be dispatched into a `Helper Loop` and operations waiting with a long timeout should be handled by an `Async Action`.

## Avoid sending messages to self

It can be tempting to have a process send a message to itself, for example to break up a long operation into steps or to re-trigger its own logic.
This should be avoided, since there is no guarantee that other, externally sent messages will not be interleaved between the self-sent message and its handling.
Relying on a process sending itself messages breaks the assumption that each message is handled atomically and makes the resulting behavior harder to reason about and test.
Model repeating or multi-step behavior using process state and `Helper Loops` instead.

## Use helper loops for repetitive tasks

Periodic work, such as polling a buffer, taking a software timed measurement, or retrying a connection, should not be implemented by having a process repeatedly re-send a message to itself.
Doing so has drawbacks and timing limitations, since it competes with normal messaging traffic and its timing is only as reliable as the process loop.
Instead, use a `Helper Loop`, which runs the periodic action in parallel to the process on its own configurable period.

## Use async handler for blocking tasks

Any operation that may block or take a significant amount of time, such as file I/O, network calls, or waiting on hardware, should not be run directly in the process loop.
Doing so stalls the handling of every other message sent to the process for as long as the operation takes.
Use an `Async Handler` to run the operation on a separate thread while the process remains responsive, and be notified of the result via messaging once it completes.

## Separate core from framework

Structure applications so that framework-specific code (message handlers, view wiring, lifecycle management) is kept separate from the core logic it delegates to.
This makes it possible to unit test the core logic directly, without needing a running process, and keeps `Handle Messages.vi` implementations focused on dispatching rather than doing the actual work.
It also means core logic can be reused in a different context or migrated to a different framework with minimal changes.

## Only touch the class data in the process loop

The class data of a process is only valid in the process loop, that is in `Handle Messages.vi` and the VIs it calls.
Never unbundle or bundle the class data in `View.vi`, `Helper Action.vi`, `Async Action.vi`, or in code that uses the process from outside.
Use API VIs instead, and let the process change its own state when it handles the message.

## One API VI per message

Wrap every message in an API VI that hard codes the message string and has typed inputs and outputs.
Use the tools in the right-click menu of the process class, **Generate API VI...**, **Generate Getter...** and **Generate Setter...**, to create them.
When you rename a message, rename both the string in the API VI and the case in `Handle Messages.vi`.

## Always respond to requests

The case that handles a request must call `Response Message.vi` on every path, including the error paths.
Otherwise the requester waits until its timeout expires.
Give requests a timeout that is longer than the worst-case time to handle them, and avoid infinite timeouts for requests that involve hardware.

## Prefer broadcasts over requests from views

A view that requests data from its process blocks while it waits.
Let the process broadcast its state when it changes, and handle `Trigger Broadcast` by broadcasting the current state, so that a new view can ask for the state once and then follow the broadcasts.

## Configure handlers once, at the top

Set the error handler and add the log handlers on the top level application.
They apply to every process in the application, including processes added later.
Configure a separate error handler on a process only when that process needs different error handling.

## Name processes uniquely

Processes owned by the same application must have unique names.
The qualified name of a process is used as the name of its configuration section, the location of its errors and the source of its log entries, so choose names that are meaningful to someone reading a configuration file or a log.
