# Scripting languages

Scripting languages are way more *dynamic* because there is no need to compile
the code prior to running it. However, it requires an *interpreter* that can
understand the semantics of the script language.

Some examples of scripting languages are:

- Python
- Julia
- Matlab
- Bash / shell
- many more ...

Any user of these *scripting* languages must first install an interpreter for said
language. This interpreter is in charge of converting the code semantics to
machine-readable semantics.


## Dynamic or Static?

For scripting languages there is (generally) no such thing as *dynamic* or *static*.

One will *reference* external libraries (other scripts) by `import` statements (language
dependent).

The only way to do a *static* linking would be to *copy in* the source code of the
library and thereby make use of it. This is *very* uncommon for libraries, and you'll
only see copies of codes which are code-snippets (small self-contained code segments) from
e.g. Stack Exchange (hopefully with proper attribution).


## Running the scripts

Here you can run the Python script and use the default `numpy` library.

Simply do this:

```shell
$> module load numpy
$> python3 run.py
Running some Python code with numpy
6
```

If you want to use another `numpy` library, for instance the one shipped
in the `lib/` folder, then do this:
```shell
$> PYTHONPATH=lib:$PYTHONPATH python3 run.py
This is my custom numpy library code!
Running some Python code with numpy
6.0
```
The output of the two are not equivalent, simply because we call two different things!


## Questions

For me as a developer, it seems I can bypass *any* software requirement by saying:

> For use, please ensure a library with the same API of the *X* library
> is present in the `PYTHONPATH` variable.

But of course, a developer will make it easy for end-users to use their software.
In scripting languages, there is typically only a description of the required
packages in the installation process, i.e. a user installing the above program
would also install `numpy` (to make it easy). However, I (as the developer)
could decide not to let the installation process install `numpy`, and let the
user do whatever they want, as long as the program has access to a library
called `numpy` at run-time.

In this case, I would imagine I can distribute the source code under *any* license,
even if one of the dependencies is GPL, simply because I did not do a default
choice for the end user?

For Python one only ever distributes the source code of the library it self. It is first
at installation point that both the library *and* its dependencies co-exist.
