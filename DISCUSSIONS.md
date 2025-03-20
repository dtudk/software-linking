# Points of views

There are many pitfalls in the license landscape. And quite often the interpretation can
be somewhat unclear.



## Bypassing software requirements as a developer

As a developer, it seems one can bypass *any* software requirement by saying:

> For use, please link to a library using the API of the *X* library.

or, for Python programs:

> For use, please ensure a library with the same API of the *X* library
> is present in the `PYTHONPATH` variable.

But of course, a developer will make it easy for end-users to use their software.
So the build-infrastructure (`make`/`pip install`) will make *sane* choices. At what part does
a choice constitute a legal binding between the two libraries?

In this case, I would imagine I can distribute the source code under *any* license,
even if one of the dependencies is GPL, simply because I did not do a default
choice for the end user?

As software is treated as a literary work, how can one make so firm license requirements
(GPL) when one *references* function calls here and there in the code.

For instance if I as a writer would publish a book-analysis. I would likely provide lots
of quotes etc. If the book I was analyzing was published under a copy-left license, would
I too be required to use a copy-left license? It seems this holds for software, but I am
not sure about literary works?


## GPL: Corresponding source

> The “Corresponding Source” for a work in object code form means all the source code
> needed to generate, install, and (for an executable work) run the object code and to
> modify the work, including scripts to control those activities. However, it does not
> include the work's System Libraries, or general-purpose tools or generally available
> free programs which are used unmodified in performing those activities but which are not
> part of the work. For example, Corresponding Source includes interface definition files
> associated with source files for the work, and the source code for shared libraries and
> dynamically linked subprograms that the work is specifically designed to require, such
> as by intimate data communication or control flow between those subprograms and other
> parts of the work.

The key sentence (for me) is:

> ... and the source code for shared libraries and dynamically linked subprograms that the
> work is specifically designed to require ...

To me, this seems to give me room to say that I don't require a specific subprogram.
Only one that defines the same API.
