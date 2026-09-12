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
