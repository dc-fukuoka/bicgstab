fc      = ifort
fcflags = -g -O3 -mavx -fopenmp
src     = bicgstab.F90
src2    = bicgstab_diag_precond.F90
bin     = a.out
bin2    = a.out.precond

all: $(bin) $(bin2)

$(bin): $(src)
	$(fc) $(fcflags) $^ -o $@

$(bin2): $(src2)
	$(fc) $(fcflags) $^ -o $@

clean:
	rm -f $(bin) $(bin2) *.mod
