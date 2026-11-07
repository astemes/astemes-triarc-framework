# Debugging

Triarc comes with a powerful debugger which enables viewing of messages in an application in real time.
The debugger is maintained in [its own repository](https://github.com/Astemes/astemes-triarc-debugger) and deployed in a separate VI Package which must be installed in order to use it.
The debugger is an invaluable tool, but prefer automated tests over debugging (see [Testing](../60_Testing/Testing.md)).

## Using the Debugger

To launch the debugger, select **Tools » Triarc » Debugger...** in LabVIEW. The Debugger window opens.
The debugger can also be launched by attaching it to the top level application, as shown below.
`Attach Debugger.vi` is found in the palette under `Triarc Debugger`.
When the debugger is attached, it also shows the broadcasts from the processes in the application.

![attach_debugger](img/attach_debugger.png)

To enable debugging, the conditional disable symbol `DEBUG` must be set to `TRUE` for the project.
The symbol can be set directly from the debugger window, with the switch in the lower right corner.
Turn debugging off for deployment: it increases the amount of logging done by the framework and adds a slight performance overhead.

## Process View

The Process View shows all active processes, their state and the latest messages they received.
Double-click a process to open its `Handle Messages.vi`, which can then be debugged with the regular LabVIEW debugging tools.
If the debugger was attached to the process or its owning application, broadcast messages are also shown.

![debugger_processes](img/debugger_processes.png)

## Message View

The Message View shows a log of the messages sent in the application, in real time.
The list can be filtered by process and by message, and to show, for example, only sent or only received messages.
Select a message to see the content of its Message Data variant in the Message Data indicator.
Double-click a sent message to open the place it was sent from, and double-click a received message to open the receiving `Handle Messages.vi`.

## Debugging without the Debugger

With `DEBUG` set to `TRUE`, the framework logs every message sent, received, requested, responded to and broadcast at the debug level.
A log handler that writes to a file or a text indicator then gives a trace of the communication in the application.
See [Logging](../35_Logging/Logging.md).

![debugger_messages](img/debugger_messages.png)

