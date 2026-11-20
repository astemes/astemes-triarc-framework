# Triarc Framework

Triarc Framework (`TF`) is an open source application framework for building LabVIEW applications made of many concurrent processes.
It is developed and maintained by [Astemes](https://astemes.com).

A Triarc process is used much like an instrument driver: you initialize it, start it, call its API, stop it and clear it.
Behind the API, every process runs its own message loop, and the framework manages that loop, the lifecycle and the communication between processes.

## Features

- **Processes**: actor-like modules with their own state and a queued message handler managed by the framework.
- **Applications**: compose processes into trees. Lifecycle, error handling and logging propagate through the tree.
- **Views**: processes with a user interface that can be shown, hidden or inserted into subpanels.
- **Messaging**: messages, synchronous and asynchronous requests, and one-to-many broadcasts.
- **Helper Loops and Async Handlers**: run periodic or blocking work next to a process, without blocking its message loop.
- **Error handling and logging**: plug in your own error handlers and log handlers.
- **Configuration**: each process reads and writes its own section of a configuration file. The file is safe to use from many processes at once.
- **Testing and tooling**: a test suite to inherit from (LUnit), scripting tools for new processes and API VIs, and a separate [debugger](https://github.com/Astemes/astemes-triarc-debugger).

## Installation

Triarc Framework is distributed as a VI Package.
The latest version, and older versions, are available under [Releases](https://github.com/Astemes/astemes-triarc-framework/releases) on GitHub.
The framework source is saved in LabVIEW 2020.

After installation, the framework VIs are found in the functions palette and in `vi.lib\Astemes\Triarc Framework` (`TF.lvlib`).

## Where to start

| If you want to... | Read |
|---|---|
| Understand what Triarc is | [Introduction](10_Introduction/Introduction.md) |
| Build your first process | [Getting Started](15_Getting%20Started/Getting%20Started.md) |
| Learn the core classes | [Framework](20_Framework/Framework.md), [Process](22_Process/Process.md), [Application](23_Application/Application.md), [View](24_View/View.md) |
| Communicate between processes | [Handling Messages](26_Handling%20Messages/Handling%20Messages.md), [Messaging](27_Messaging/Messaging.md), [Broadcasting](28_Broadcasting/Broadcasting.md), [Requests](29_Requests/Requests.md) |
| Handle errors and log | [Error Handling](30_Error%20Handling/Error%20Handling.md), [Logging](35_Logging/Logging.md) |
| Run work in parallel to a process | [Helper Loops](40_Helper%20Loops/Helper%20Loops.md), [Async Handler](45_Async%20Handler/Async%20Handler.md) |
| Test and debug | [Testing](60_Testing/Testing.md), [Debugging](70_Debugging/Debugging.md) |
| Read and write configuration | [Configuration](80_Configuration/Configuration.md) |
| Write good Triarc code | [Best Practices](90_Best%20Practices/Best%20Practices.md) |

## Examples and related projects

- Examples: [astemes-triarc-examples](https://github.com/Astemes/astemes-triarc-examples)
- Debugger: [astemes-triarc-debugger](https://github.com/Astemes/astemes-triarc-debugger)
- Source: [astemes-triarc-framework](https://github.com/Astemes/astemes-triarc-framework)

Everything is open source, so reading the framework source is a good way to learn how it works.
