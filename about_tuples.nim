import unittest, koans

test "create a tuple":
  let
    bob: tuple[name: string, age: int] = (name: "Bob", age: 16)
    joe = (name: "Joe", age: 16)       # with a type inferring

  check joe != bob
  check joe.age == bob.age


  check replaceInt == bob.age
  check replaceString == joe.name

test "tuples have indexes":
  let
    diceTripleRole = (first: 5, second: 3, third: 1)

  check diceTripleRole.first == diceTripleRole[0]

  check replaceInt == diceTripleRole[0]
  check replaceInt == diceTripleRole[1]
  check 1 == diceTripleRole[replaceInt]

test "tuples may have only indexes":
  let
    diceTripleRole = (5, 3, 1)

  check 3 == diceTripleRole[replaceInt]

test "sometime explicit typing helps":
  type
    Dice = range[1..6]
  var
    diceTripleRole: tuple[first, second, third: Dice]

  diceTripleRole = (2.Dice, 1.Dice, 6.Dice)

  when never:
    diceTripleRole.third = 7.Dice

  check Dice(replaceInt + 1) == diceTripleRole.third



test "you can mutate tuple fields":
  var
    date = (day: 14, month: 11, year: 2015)
  date.day = 15

  check replaceInt == date.day
