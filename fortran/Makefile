LIBS ?= -L/opt/gnu/12.3.0/openblas/0.3.28/lib -lopenblas
FC = gfortran
FFLAGS = -fpic

default: program-static program-shared lib


program-static: program.o
	$(FC) -static $(FFLAGS) -o $@ $< $(LIBS)

program-shared: program.o
	$(FC) $(FFLAGS) -o $@ $< $(LIBS)

.PHONY: lib
lib:
	$(MAKE) -C lib

.PHONY: clean
clean:
	-rm -f *.o *.mod program-static program-shared
	$(MAKE) -C lib clean

%.o: %.f90
	$(FC) -c $(FFLAGS) -o $@ $<
