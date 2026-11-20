# Getting Started

This page walks through creating a first Triarc process and running it from a top level VI.
It assumes that you know the LabVIEW queued message handler pattern and have used LabVIEW classes.

## Install the Framework

Install the Triarc Framework VI Package with VI Package Manager.
The package installs:

- the framework library `TF.lvlib` in `vi.lib\Astemes\Triarc Framework`, with palettes,
- the Triarc Framework Test Suite (see [Testing](../60_Testing/Testing.md)),
- IDE integration: menu items under **Tools » Triarc** and right-click menu items for processes in the project window,
- the framework error codes (see [Error Handling](../30_Error%20Handling/Error%20Handling.md)).

## Create a Process

1. Open or create a LabVIEW project.
2. Select **Tools » Triarc » Add Framework Library to Project** to add `TF.lvlib` to the project.
3. Select **Tools » Triarc » New Triarc Process**.
   In the dialog, select the parent class, enter a name for the process and select the folder to save it in.
   The parent can be `Process`, `View`, `Application`, or any process class already in the project.
4. The tool creates the class, overrides `Handle Messages.vi` and adds the class to the project.

## Add an API VI

Other code talks to a process only through its API VIs.
Right-click the process class in the project window and select:

- **Generate API VI...** to create a VI that sends a message to the process. Enter the message name in the dialog.
  The tool creates the API VI and adds a case for the message to `Handle Messages.vi`.
- **Generate Getter...** to create a VI that reads a field of the private class data through a request.
- **Generate Setter...** to create a VI that writes a field of the private class data through a message.

The generated VIs use the dual-mode pattern described in [Handling Messages](../26_Handling%20Messages/Handling%20Messages.md#api-vis):
called from outside the process they send a message, and called from inside the process loop they do the work.

Implement the behavior in the case of `Handle Messages.vi` that handles the message.
The `Handle Messages.vi` is the only place where the class data may be unbundled and bundled.
Keep the `Default` case calling the parent method, so that messages defined by the parent classes are still handled.

## Run the Process

A top level VI uses a process like an instrument driver:

1. Create the process object (a class constant) and call `Init.vi` with a name.
2. Optionally configure an error handler with `Set Error Handler.vi` and log handlers with `Add Log Handler.vi`.
3. Call `Start.vi`. The VI returns when the process is running.
4. Call the API VIs of the process.
5. Call `Stop.vi`. The VI returns when the process has finished.
6. Call `Clear.vi` to release the resources allocated by `Init.vi`.

For an application with more than one process, create an `Application`, initialize each process, and add it with `Add Process.vi`.
The application then starts, stops and clears its processes for you.
See [Application](../23_Application/Application.md).

## Next Steps

- Read [Process](../22_Process/Process.md) to learn the process lifecycle.
- Read [Best Practices](../90_Best%20Practices/Best%20Practices.md) before the application grows.
- Look at the examples in [astemes-triarc-examples](https://github.com/Astemes/astemes-triarc-examples).
- If you use an AI coding agent, point it at the [Agent Guide](../95_Agent%20Guide/Agent%20Guide.md).
