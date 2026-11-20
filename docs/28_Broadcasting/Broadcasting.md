# Broadcasting

Broadcasting is a communication channel for one-to-many messages.
A process broadcasts a message without knowing who, if anyone, receives it.
This keeps the sender decoupled from the receivers.

## Implementation using User Events

Broadcasts are sent as User Events with a fixed data type, the `Broadcast Message Cluster`:

| Element | Content |
|---|---|
| `Sender` | The name of the process that sent the broadcast. |
| `Message` | The broadcast message string. |
| `Message Data` | A variant with the data of the broadcast. |

The framework creates the User Event and manages the event registration.

## Sending Broadcasts

A process sends a broadcast with the protected `Broadcast Message.vi`.
As with messages, wrap it in a VI that hard codes the message string and the data type, so that senders and receivers agree on both.

Since the data is a variant, each receiver must know which type to expect for a given message.
Document the message names and data types of the broadcasts of a process.

## Receiving Broadcasts

To register for the broadcasts of a process, use `Register for Broadcast Events.vi`.
To register for the broadcasts of an `Application` and all processes in it, including nested applications, use `Register for Broadcasting Events Recursively.vi`.

![receiving broadcasts](img/receiving_broadcasts.png)

Handle the broadcasts in an event structure, as shown above.
Switch on `Message` in the user event case, and convert `Message Data` to the expected type.
Use `Sender` to tell processes apart when you are registered for broadcasts from more than one process.

`Get Broadcast Event.vi` returns the User Event itself, for code that needs to build its own event registration.

## Trigger Broadcast

`Trigger Broadcast.vi` sends the `Trigger Broadcast` message to a process.
Override the `Trigger Broadcast` case in `Handle Messages.vi` to broadcast the current state of the process, and call the parent method from the case so that the parent classes can broadcast their state too.

A new view, or any other new observer, can then call `Trigger Broadcast.vi` after registering, to receive the current state instead of waiting for the next change.
For an application, `Trigger Broadcast` is forwarded to all owned processes.

## Framework Broadcasts

The framework broadcasts the following messages:

| Message | Sent by | When |
|---|---|---|
| `Lifecycle` | Every process | On every lifecycle change. The data identifies the new state, for example `Running`, `Finished` or `Cleared`. |
| `Stop` | `View` | When the view is stopped. Every `View.vi` must exit when it receives this broadcast. |
| `View Panel` | `View` | When the front panel is shown or hidden. |
| `Process Added`, `Process Removed` | `Application` | When a process is added to or removed from the application. |
| `Helper Loop` | Processes with helper loops | When a helper loop starts, runs and stops. |
| `Async Handler` | Processes with async handlers | When an async handler starts, runs and finishes. |

Do not use these message names for your own broadcasts.

## Debugging Broadcasts

With the `DEBUG` conditional disable symbol set to `TRUE`, every broadcast is logged at the debug level.
The [debugger](../70_Debugging/Debugging.md) can also show broadcasts.
