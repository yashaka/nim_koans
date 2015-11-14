import unittest, koans

test "assert equality of variables":
  var
    expectedValue = replaceInt
    actualValue = 1 + 1
  check expectedValue == actualValue
