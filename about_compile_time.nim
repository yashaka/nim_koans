import unittest, koans

test "when statement levarages code path during compile time":
  when false:
    assert 2 + 2 == 5
  when replaceTrue:
    assert false

test "discard broken code or unused results of expresions":
  discard 1 > 2 # Note: The compiler will complain if the result of an expression
                # is unused. `discard` bypasses this.
  discard """
  you can use discard to put some "broken" code (e.g. failing code)
  into multiline string ;)
  """

  assert false
  assert true == false
  assert 2 * 2 < 2
