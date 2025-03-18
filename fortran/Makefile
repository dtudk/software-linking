BLAS ?= openblas
BLAS_PATH ?= /opt/gnu/12.3.0/openblas/0.3.28/lib
FC ?= gfortran
FFLAGS ?= -fpic

default: program-static program-shared lib


program-static: program.o
	$(FC) -static $(FFLAGS) -o $@ $< -L$(BLAS_PATH) -l$(BLAS)

program-shared: program.o
	$(FC) $(FFLAGS) -o $@ $< -L$(BLAS_PATH) -l$(BLAS)


lib: program-shared
	$(MAKE) -C lib \
		FC="$(FC)" FFLAGS="$(FFLAGS)" \
		LIB_NAME="$(shell ldd ./program-shared | grep lib$(BLAS) | awk '{print $$1}')"


%.o: %.f90
	$(FC) -c $(FFLAGS) -o $@ $<

clean:
	-rm -f *.o *.mod program-static program-shared
	$(MAKE) -C lib clean

.PHONY: default lib clean
