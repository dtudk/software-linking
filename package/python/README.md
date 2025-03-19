## Playground project

This small project will show you how to adapt the dependencies
of a project.

I.e. which steps does a developer do to insert a dependency
in their installation process.


This small project only provides two simple functions.

The project it-self does *not* depend on `numpy`. Yet, one
of the functions uses a `numpy` function. So it has partial
dependency.

In this example we will play with installing the package.
And see how it can be used, and what limitations there is.
Then we will change a file to ensure that `numpy` is also installed.

First, install the program:
```shell
$> module load python3
$> python3 -m pip install -e .
```

This will enable Python to *use* the `playground` package.
Try this:
```shell
$> python
Python 3.11.7 (main, Feb 13 2024, 19:40:15) [GCC 12.3.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import playground as pg
>>> pg.play("hello", "there", 1)
```
You have thus called an intrinsic function from the `playground` package.

Now, let us try and call the function which requires access to `numpy`:
```shell
>>> pg.ground()
Traceback (most recent call last):
  File "<string>", line 1, in <module>
  File ".../playground/functions.py", line 23, in ground
    import numpy as np
ModuleNotFoundError: No module named 'numpy'
```
So any user trying to invoke this function will experience an error if
they do not have access to `numpy`.


### Fixing the `numpy` dependency

If the developer wishes to make life easier for a user, they can instruct
their package to also install *any* package when the package it-self is
installed.

Edit the file `pyproject.toml` and add `numpy` to the list of dependencies.
It should look something like this:
```toml
dependencies = [
  "numpy"
]
```
Now, we should install it again (so the dependency gets installed).
```shell
$> python3 -m pip install -e .
```
Note, that this is *exactly* the same installation command as used
previously. The dependencies are defined at the *project* level.

Now you can try and run the same commands as above, and you will
not see any errors.
