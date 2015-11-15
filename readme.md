# This is a nim versions of [Koans](http://www.lauradhamilton.com/learn-a-new-programming-language-today-with-koans) - practical way to learn new language

Koans are tests that fails unless you fix them.
These tests cover main features of a programming language.
Via fixing tests you learn the language.

Usually the fix is around replacement of some "replace variables". The process (being pretty simple itself) needs an understanding of how language features works.

Go ahead and run nim koans, find the next "failing" one, go to the code, understand it and replace the "wrong parts" with a proper fix  ;) On the way to "ALL PASSED" you will achieve enlightenment ;)


## Howto

* clone it
* `$ cd nim_koans`
* `$ nim c -r path_to_enlightenment.nim`
* Read output, find the part like:
```text
Traceback (most recent call last)
about_asserts.nim(5)
```
* open indicated file (in this case - `about_asserts.nim`), find the indicated line (in this case - `5`)
* meditate on problem & fix it
* rerun `$ nim c -r path_to_enlightenment.nim`
* and so on... untill you make all koans PASSED.

## Configuration

In case you want to see the full list of failed koans, change:
```nim
unittest.abortOnError = true
```
to
```nim
unittest.abortOnError = false
```
in `path_to_enlightenment.nim`
