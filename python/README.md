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
module load numpy
python3 run.py
Running some Python code with numpy
6
```

If you want to use another `numpy` library, for instance the one shipped
in the `lib/` folder, then do this:
```shell
PYTHONPATH=lib:$PYTHONPATH python3 run.py
This is my custom numpy library code!
Running some Python code with numpy
6.0
```
The output of the two are not equivalent, simply because we call two different things!
