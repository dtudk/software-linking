LIB_NAME ?= lib$(BLAS).so.0
FC ?= gfortran
FFLAGS ?= -fpic

default: lib$(BLAS).so


lib$(BLAS).so: custom_sgemm.o
	$(FC) -shared $(FFLAGS) -o $@ $<
# We need to dynamically create the final reference.
# The problem is that the libraries we link against are typically
# so-versioned, meaning that the linker will resolve the actual
# file at link time. So liblas.so becomes libblas.so.0
# However, there are typically 2 levels of so-names.
# So instead we rely on the external caller passed a LIB_NAME
# variable that is the actual name coded in the shared table of
# the executable.
# It ain't pretty but works for the example that we are interested
# in. ;)
	ln -s ./$@ $(LIB_NAME)


%.o: %.f90
	$(FC) -c $(FFLAGS) -o $@ $<

clean:
	-rm -f *.o *.mod lib*.so*

.PHONY: default clean
