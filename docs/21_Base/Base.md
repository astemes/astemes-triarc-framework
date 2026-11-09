# Base

The `Base` class is the common ancestor of all Triarc processes.
It can also be used on its own, for components that do not run asynchronously but should be named and configurable in the same way as processes.

## Name

`Base` stores the name of the object.
The name is set by `Init.vi` and cannot be changed afterwards.
If no name is given, the name of the class is used.

The name should be unique among the processes owned by the same application.
Processes in different applications may have the same name, because a process is identified by its qualified name, which includes the names of its owners (see [Application](../23_Application/Application.md#qualified-names)).

| VI | Returns |
|---|---|
| `Read Base Name.vi` | The name given at initialization. |
| `Read Name.vi` (on `Process`) | The name and the qualified name, `Owner::Name`, built from the chain of owning applications. |

## Configuration Scaffolding

`Base` holds the data that the `Configuration File` interface needs: the path to the configuration file and the reference to the open file.
A class that should be configurable inherits this scaffolding from `Base` and implements the `Configuration File` interface.
See [Configuration](../80_Configuration/Configuration.md).

The configuration file path is an optional input of `Init.vi`.
If it is not wired, the default path is used. `Read Config File Path.vi` returns the path in use.

## Init and Clear

`Init.vi` initializes the object and creates any references it needs.
`Clear.vi` releases everything created by `Init.vi`.
Both are dynamic dispatch VIs. Descendants that override them must call the parent method.
