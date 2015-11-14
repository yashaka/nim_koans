# This is a nim versions of Koans - practical way to learn "second" language

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
* and so on...

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
