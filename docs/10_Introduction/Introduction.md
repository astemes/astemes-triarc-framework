# Introduction to Triarc Framework

This page gives a short introduction to the Triarc Framework (`TF`) and an overview of its main ideas.
The framework is developed and maintained by Astemes and is released under an open source license.

## What is Triarc Framework

Triarc is an application framework for building concurrent applications in LabVIEW.
It provides three core abstractions: `Processes`, `Applications`, and `Views`.
You extend these classes to build your own applications.

The framework manages the lifecycle of every process and the communication channels between processes.
It also provides the boilerplate for error handling, logging and configuration management.

The API of a `TF` process looks like the API of an instrument driver, so it should feel familiar to any LabVIEW developer.
In the example below, the process is initialized and started before the while loop, used through its API inside the loop, and stopped and cleared after the loop.

![Triarc API Example](img/api.png)

`TF` is based on the actor model, a proven way of managing concurrent and distributed processing.
The design goal is to give you the benefits of an actor based system, with a simple API and without unnecessary complexity.

The framework is developed test first.
Modules built on `TF` are testable, and they can be designed to follow the SOLID principles.

## Core Concepts

| Concept | In short | Read more |
|---|---|---|
| Process | An actor: a class with private state and a message loop managed by the framework. | [Process](../22_Process/Process.md) |
| Application | A process that owns other processes and manages their lifecycle. | [Application](../23_Application/Application.md) |
| View | A process with a front panel. | [View](../24_View/View.md) |
| Message | A string and a variant, sent to a process through an API VI. | [Messaging](../27_Messaging/Messaging.md) |
| Request | A message that waits for, or calls back with, a response. | [Requests](../29_Requests/Requests.md) |
| Broadcast | A one-to-many notification from a process to anyone who registered. | [Broadcasting](../28_Broadcasting/Broadcasting.md) |
| Helper Loop | A periodic action running in parallel to a process. | [Helper Loops](../40_Helper%20Loops/Helper%20Loops.md) |
| Async Handler | A blocking or slow action running in parallel to a process. | [Async Handler](../45_Async%20Handler/Async%20Handler.md) |

## Why Yet Another Framework?

There are well established frameworks in the LabVIEW ecosystem, most notably NI Actor Framework and DQMH.
Each has its own benefits and drawbacks, but neither fitted our needs and workflow well.
A test rig architecture grew over a few incarnations, and from it a generic high level framework could be extracted, distilled, tested and improved.

Triarc processes are composable, independent, and testable.
The framework encourages modularity and lets you compose applications out of small processes, each with a single responsibility.
Communication between processes is robust, and the framework manages the lifecycle of each process.
The framework provides entry points for error handling and logging, and a powerful debugger is available.

There may not be a great demand for a new framework, but there was no reason to keep Triarc private or closed.
Releasing it as open source enforces proper, publicly available version management.
It is valuable for all users of the framework, and anyone can contribute both ideas and code.
