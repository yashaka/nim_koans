import unittest
import koans

test "assert truth":
  assert false

test "assert with message":
  assert false, "This should be true -- Please fix this"

test "fill in values in expression of comparison":
  check replaceInt == 1 + 1
