# Handling Messages

Users of a process send messages to it by calling API VIs on the process wire. The users are not necessarily human.
All messages are enqueued with the same priority to the process loop, where they are received and passed to `Handle Messages.vi`.
This VI is the core of every process.

## The `Handle Messages.vi`

`Handle Messages.vi` is called in the process loop and receives every message sent to the process through the API.
Think of it as a subVI that contains only the case structure of a traditional LabVIEW queued message handler.
As shown below, `Handle Messages.vi` receives the message string and the message data variant, and has access to the process wire.

![handle messages](img/handle_messages.png)

A very important rule in Triarc is that `Handle Messages.vi` is the only place where the data on the class wire is accessible and valid.
In other words, this is the only place where the class wire may be unbundled or bundled.

Each case should:

1. convert `Message Data` to the expected type with `Variant To Data`,
2. do the work, typically by calling the API VI that sent the message, or a subVI with the core logic,
3. if the message was a request, call `Response Message.vi` on every path, including when an error occurred.

Each message should be handled atomically, in one case.
Avoid sending messages from `Handle Messages.vi` to the process itself: other messages may be handled in between.
Use process state and a [Helper Loop](../40_Helper%20Loops/Helper%20Loops.md) for repeated or multi-step behavior.

## API VIs

The messaging VIs (`Send Message.vi`, `Request Message.vi`, …) are protected.
Every message therefore needs a public (or private) API VI in the class that handles it.
The API VI hard codes the message string and has typed inputs and outputs for the message data.

The API VIs created by the Triarc tools (**Generate API VI...**, **Generate Getter...** and **Generate Setter...** in the right-click menu of a process class) are dual-mode VIs.
They call `Get Lifecycle State.vi` and switch on its `API Mode` output:

| `API Mode` | Called from | The API VI |
|---|---|---|
| `Send Message` | Outside the process: another process, a view, a test, a top level VI. | Sends the message with `Send Message.vi`, or makes a request with `Request Message.vi` and returns the response. |
| `Handle Message` | Inside the process loop, from `Handle Messages.vi`. | Does the work on the class data. |

The case in `Handle Messages.vi` that handles the message calls the same API VI, which now runs in `Handle Message` mode.
The behavior of the message is then defined in one VI, and the message string appears in exactly two places: the API VI and the case name.

When you rename a message, change both the string constant in the API VI and the case name in `Handle Messages.vi`.
The type converted with `Variant To Data` in the case must match the type the API VI sends.

## Overriding Messages

Since every message is passed to `Handle Messages.vi`, it also receives the messages defined by API VIs of the parent classes.
The normal behavior is to call `Call Parent Class Method` in the `Default` case and let the parent handle the message.

You can also handle a parent message in a child class, to replace or extend the behavior of the parent.
To extend it, handle the message and call the parent method from the same case.
This is an example of how a Triarc process follows the open-closed principle.

Messages handled by the framework classes:

| Class | Messages |
|---|---|
| `Process` | `Init`, `Start`, `Stop`, `Trigger Broadcast`, `Set Error Handler`, `Add Log Handler` |
| `View` | `Start`, `Stop`, `Show Panel`, `Hide Panel`, `Get View VI Reference` |
| `Application` | `Start`, `Stop`, `Trigger Broadcast`, `Set Error Handler`, `Add Log Handler`, `Add Process`, `Get Process`, `Get All Processes`, `Remove Process`, `Shutdown Process` |

A message that no class handles ends up in the `Default` case of `Process`, which returns error 9503, Unknown command received.
