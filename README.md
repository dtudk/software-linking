# Software linking

This small repository highlights some differences between dynamic and static
linking.

The main difference between the two is that with dynamic linking a user has the
option to dynamically choose which library to use at the time of execution.
For the static linking the choice of library is determined at compile time.

In this repository there are several directories.

- `fortran`  
  Contains a fortran source code which highlights the differences of linking
  with compiled code.
- `package`  
  contains code for scripting languages. In particular a playground package
  and some examples of how to run code.
- `python`  
  Contains a python source code which is a scripting language. Here there is *per see*
  not any *linking* taking place.


## Accessing the DTU HPC infrastructure

The examples and playground will be done on the DTU HPC infrastructure.

All DTU employees have access to our HPC infrastructure.

Please go to [https://thinlinc.gbar.dtu.dk](https://thinlinc.gbar.dtu.dk/) and login
using your regular DTU credentials.

There, you'll have access to a Linux distribution, and will have access to all the
software all employees and students have access to.


## Interesting quotes from GPL

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
