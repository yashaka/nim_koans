import unittest
import koans

test "assert truth":
  assert false  # true stands for truth in nim

test "assert with message":
  assert false, "This should be true -- Please fix this"

test "assert with better print-out on error":
  check replaceInt == 1 + 1
