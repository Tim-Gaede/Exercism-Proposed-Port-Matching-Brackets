# Matching Brackets

Given a string containing brackets `[]`, braces `{}`, parentheses `()`,
or any combination thereof, verify that any and all pairs are matched
and nested correctly.


## Exception messages

Sometimes it is necessary to raise an exception. When you do this, you should include a meaningful error message to
indicate what the source of the error is. This makes your code more readable and helps significantly with debugging. Not
every exercise will require you to raise an exception, but for those that do, the tests will only pass if you include
a message.

To raise a message with an exception, just write it as an argument to the exception type. For example, you should write:

```julia
throw(ErrorException("Meaningful message indicating the source of the error"))
```
## Version compatibility
This exercise has been tested on Julia 1.2.

## Submitting Exercises

Note that, when trying to submit an exercise, make sure the solution is in the `$EXERCISM_WORKSPACE/julia/matching-brackets` directory.

You can find your Exercism workspace by running `exercism debug` and looking for the line that starts with `Workspace`.

For more detailed information about running tests, code style and linting,
please see [Running the Tests](http://exercism.io/tracks/julia/tests).

## Source

Ginna Baker

## Submitting Incomplete Solutions

It's possible to submit an incomplete solution so you can see how others have completed the exercise.
