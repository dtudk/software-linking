FC = gfortran
FFLAGS = -fpic

default: libopenblas.so libopenblas.so.0

libopenblas.so: custom_sgemm.o
	$(FC) -shared $(FFLAGS) -o $@ $< $(LIBS)

libopenblas.so.0: libopenblas.so
	ln -s ./$< $@

.PHONY: clean
clean:
	-rm -f *.o *.mod libopenblas.so libopenblas.so.0

%.o: %.f90
	$(FC) -c $(FFLAGS) -o $@ $<
