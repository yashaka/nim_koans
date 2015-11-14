import unittest, koans

test "expression can consists of variables defined earlier in var statement":
  var
    expectedValue = replaceInt
    actualValue = 1 + 1
  check expectedValue == actualValue

test "symbols defined under var statement can be reassigned":
  var
    expectedValue = 0
    actualValue = 1 + 1
  expectedValue = replaceInt
  check expectedValue == actualValue

test "symbols under const statement are defined at compiletime":
  const
    never = replaceBool
  when false:
    never = true
  when not never:
      assert false, "make me ignored by compiler;)"

test "symbols defined under let statement cannot be reassigned":
  let
    expectedValue = replaceInt
    actualValue = 1 + 1
  when false:
    expectedValue = 0
  check expectedValue == actualValue
