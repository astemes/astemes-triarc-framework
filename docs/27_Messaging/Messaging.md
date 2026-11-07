# Messaging

The main communication channel in Triarc is passing messages to a process.

## The Messaging API

The messaging API is small, as seen below.

![messaging api](img/messaging_api.png)

| VI | Description |
|---|---|
| `Send Message.vi` | Enqueues a message to the process. Returns immediately. |
| `Request Message.vi` | Enqueues a request and waits for the response. See [Requests](../29_Requests/Requests.md). |
| `Async Request Message.vi` | Enqueues a request. The response is delivered to a `Callback`. See [Requests](../29_Requests/Requests.md). |
| `Response Message.vi` | Sends the response to a request, from the case that handles the request. |
| `Enqueue Message.vi` | Deprecated. Use `Send Message.vi`. |

All these VIs are protected, so they can only be called from the class and its descendants.
A message is a string, `Message`, and a variant, `Message Data`.

There are no priority levels, and messages are handled in the order they are sent.
The VI that receives messages is private to the `Process` class and is only used in the process loop.

## Sending Messages

A message is sent to the process with `Send Message.vi`, and it is received in `Handle Messages.vi` of the process.
When it receives a message, the process may run some logic, change its state data, launch new processes, broadcast a message, and so on.

Handle each message atomically, implementing the full functionality in one case of `Handle Messages.vi`.
There is no guarantee that other messages are not handled in between if one API call sends several messages.

## Messaging through the Lifecycle

Messages may be sent both while a process is running and before it has been started.
Messages sent before the process is started are not handled until it is started.

When the process starts, the first message handled is always the framework's `Init` message.
Then all messages sent before the process was started are handled, and then the `Start` message.

`Stop.vi` sends a `Stop` message.
Messages sent after `Stop.vi` was called, but before the `Stop` message is handled, are handled before the process finishes.
This allows a controlled and clean stop. If a process must be terminated quickly, `Clear.vi` terminates it immediately.

Messages can still be sent to a stopped process, but they are not handled unless the process is started again.
Restarting a process is fully supported.

## Type Safety

The messages of a process are defined by the class that handles them.
Since the messaging VIs are protected, each message needs an API VI that enqueues it.
The API VI should hard code the message string and enforce the data type of the message data.
This protects against misspelled message strings and makes sure the expected data type is sent.
It also gives the process a clear, robust high level API, which helps both testing and readability.

See [Handling Messages](../26_Handling%20Messages/Handling%20Messages.md#api-vis) for the API VI pattern.
