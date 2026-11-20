# View

A Triarc `Process` is headless: it runs without a user interface.
Indicators may be added to `Handle Messages.vi` for debugging, but this is not a good way to build a user interface.
The `View` class, which inherits from `Process`, adds a user interface to the process.
Use it to build user interface components. Complex user interfaces are usually composed of many small views inserted into subpanels.

## Anatomy of a View

The `View` class adds a VI called `View.vi`, and methods for showing and hiding its front panel.
The API also has a method that returns a reference to the running `View.vi`, which can be used to insert the view into a subpanel.
The API is shown below.

![view api](img/view_API.png)

| VI | Description |
|---|---|
| `View.vi` | The user interface. Protected and dynamic dispatch: override it in your view class. |
| `Show Panel.vi` | Opens the front panel of the running `View.vi`. |
| `Hide Panel.vi` | Closes the front panel. `View.vi` keeps running. |
| `Get View VI Reference.vi` | Returns the reference to the running `View.vi`, for example to insert it into a subpanel. |
| `Set View VI Reference.vi` | Protected. Called by `View.vi` when it starts, to report its reference to the framework. |

The framework launches `View.vi` when the view process starts and sets the window title to the qualified name of the process.
`Show Panel.vi` returns error 9506 if the view is not running.
When the panel is shown or hidden, the view broadcasts a `View Panel` message.

## Requirements on the View.vi

The framework asserts two requirements on `View.vi`, and it is important that both are met:

1. When it starts, `View.vi` reports a reference to itself with `Set View VI Reference.vi`.
2. `View.vi` stops when the `Stop` message is broadcast.

This is shown below.
A unit test that checks both requirements is created with the class when the class is created with **Tools » Triarc » New Triarc Process**.

![view.vi bd](img/view_bd.png)

A typical `View.vi`:

- registers for the broadcasts of its own process with `Register for Broadcast Events.vi`,
- calls `Set View VI Reference.vi` with a reference to `This VI`,
- runs an event structure that handles user interface events and broadcast events,
- exits its loop when the `Stop` broadcast is received,
- handles `Panel Close?` by calling `Hide Panel.vi` and discarding the event, so that closing the window hides the panel instead of stopping the view.

## Communicating between the Process and the View

`View.vi` and `Handle Messages.vi` run concurrently, in separate VIs, with some given communication channels.

When the user interacts with the view, `View.vi` may call any API method of the process to send messages to the process loop.
As `View.vi` belongs to the process class, these API VIs may even be private.

Communication from `Handle Messages.vi` in the process loop to `View.vi` is usually done with broadcasts.
The process loop broadcasts a message, and `View.vi` handles it to update the user interface.

Another way to update the user interface is to send references to indicators from `View.vi` to the process, and update the indicators with property nodes in `Handle Messages.vi`.

Remember that `View.vi` runs outside the process loop.
It must not unbundle or bundle the class data. Use API VIs to change the state of the process.
