# Helper Loops

A common pattern in LabVIEW is to use helper loops for periodic tasks.
Triarc provides a generic implementation for running helper loops and managing their lifecycle.

## Use Cases

Many tasks need to be done periodically.
Examples are a software timed measurement, reading from a buffer, or reconnecting to a network service.
In principle this could be solved by sending the same message to the process over and over, but that has drawbacks and timing limitations.
A better solution is a helper loop running in parallel to the process.

## Using a Helper Loop

To add one or more helper loops to a process, make the host process class implement the `Helper Loop` interface.
The interface requires you to override the dynamic dispatch VI `Helper Action.vi`, which defines the action taken in each iteration of the helper loop.
`Helper Action.vi` is shown below.

![Helper BD](img/helper_loop_bd.png)

When a helper loop is started, `Helper Action.vi` is called periodically, with the period given by its `Loop Period [ms]` output.
The loop runs until one of the following happens:

- `Helper Action.vi` sets `Exit?` to `True`,
- `Helper Action.vi` returns an error. The error is passed to the error handler of the process, with a location that tells that the helper loop stopped on error,
- `Stop Helper Loops.vi` is called,
- the host process finishes or is cleared.

Warnings returned by `Helper Action.vi` are logged, and the loop continues.

## Launching a Helper Loop

To launch a helper loop, call `Launch Helper Loop.vi` from `Handle Messages.vi` of the host process.
It must be called from inside the process loop. Called from outside, it returns error 9509.

A host process can run many helper loops at the same time.
`Launch Helper Loop.vi` takes a `Message` string and a `Message Data` variant, which are passed to `Helper Action.vi`.
Use them to parameterize helper loops and to run different actions in different loops.

![Helper palette](img/helper_loop_palette.png)

The framework stops all helper loops when the process finishes or is cleared.
A running helper loop can also be stopped with `Stop Helper Loops.vi`, shown in the palette above.
Note that the VI stops all running helper loops of the process. The framework provides no way to stop helper loops selectively.
To stop one loop of several, let `Helper Action.vi` set `Exit?` based on its input, or restart the loops that should keep running.

The process broadcasts a `Helper Loop` message when a helper loop starts, runs and stops.

## State Data

The class data flows through `Helper Action.vi`, but it holds a snapshot of the state of the host process from when the helper loop was started.
The data in the helper loop is not updated when the state of the host process changes. If the helper loop needs updated data, it must be restarted.

Similarly, the state of the process cannot be changed from within the helper loop.
To communicate data back to the host process, call API VIs of the process in `Helper Action.vi`.
The framework makes sure the class data in the helper loop is marked as outside the process loop, so these API VIs send messages to the process.
