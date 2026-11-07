# Testing

Triarc is developed test first, and processes built on Triarc are designed to be testable.
Good test coverage is preferred over debugging: it is much easier to find a problem in a small test case than in a complete application.

## Testing a Process

A process is tested through its public API, in the same way as it is used in an application:

1. Initialize the process with `Init.vi`. Pass a temporary configuration file path, so that the test does not depend on, or change, a real configuration file.
2. Optionally set a mock error handler and a mock log handler, to observe errors and log entries.
3. Start the process, call its API VIs, and check the results.
4. Stop and clear the process.

Requests return values directly, which makes them convenient to test.
To test behavior that is only visible as broadcasts, register for the broadcasts of the process in the test before calling the API, and dequeue the broadcasts with a timeout.

Keep the core logic of a process in plain VIs and classes that know nothing about the framework (see [Best Practices](../90_Best%20Practices/Best%20Practices.md)).
That logic can then be tested directly, without starting a process.

## The Triarc Framework Test Suite

The Triarc Framework Test Suite is installed with the framework.
It contains LUnit test case classes that test that a process meets the requirements of the framework.
Add it to a project with **Tools » Triarc » Add TF Test Suite to Project**.

The test case classes form a hierarchy, built on the LUnit test inheritance package:

| Test case class | Tests |
|---|---|
| `Base Test` | Errors flow through `Init.vi` and `Clear.vi`. `Clear.vi` before `Init.vi` returns no error. |
| `Process Test` (inherits `Base Test`) | A configured error handler receives errors. A configured log handler receives log entries. `Trigger Broadcast` causes a broadcast. |
| `View Test` (inherits `Process Test`) | `View.vi` stops when the view is stopped. Showing and hiding the panel causes no errors. `Get View VI Reference.vi` returns a valid reference. |
| `Application Test` (inherits `Process Test`) | Runs the inherited process tests on an application. |
| `Error Handler Interface Test` | An error handler handles errors and warnings. |

To run these tests on your own class, create a test case class that inherits from the matching test class, and let its `Setup.vi` provide an instance of the class under test.
The inherited tests then run against your class.
When a process is created with **Tools » Triarc » New Triarc Process**, a test class like this is created with it.
For a view, it tests the two requirements on `View.vi` described in [View](../24_View/View.md#requirements-on-the-viewvi).

Add your own test methods to the same test case class to test the behavior of your process.
The protected accessors of the test classes, such as `Read Process.vi` and `Read View.vi`, return the object under test, and `Get Test Config File Path.vi` returns a temporary configuration file path.

## Test Doubles

The test suite also contains test doubles:

| Class | Use |
|---|---|
| `Mock Error Handler` | An error handler that records the errors and warnings it receives. Read them with the `Spy` VIs, for example `Spy Wait on Error.vi` and `Spy Flush Last Error.vi`. |
| `Mock Log Handler` | A log handler that records the entries it receives. Read them with `Dequeue Log Entry.vi` and `Flush Spy Queue.vi`. |
| `Mock Process` | A process that records the messages it receives and can be told to raise errors, run helper loops and answer requests. It is mainly used to test the framework. |

Set the mock error handler with `Set Error Handler.vi` and the mock log handler with `Add Log Handler.vi`.

## Tips

- Use finite timeouts in tests. A test that waits forever for a broadcast or a request blocks the whole test run.
- Clear every process a test creates, also when the test fails, so that a failing test does not leave processes running.
- Do not share state between tests. Triarc has no global state, so tests can create their own processes and handlers without interfering with each other.
