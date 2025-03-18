MPICC = mpicc
CFLAGS = -g -Wall -O3  

pi_monte_carlo: pi_monte_carlo.c Makefile
	$(MPICC) $(CFLAGS) -o $@ $<

clean:
	rm -f pi_monte_carlo

tests: $(EXECS)
	mpirun -n  1 ./pi_monte_carlo           100000000
	mpirun -n  2 ./pi_monte_carlo           100000000
	mpirun -n  3 ./pi_monte_carlo           100000000
	mpirun -n  4 ./pi_monte_carlo           100000000
	mpirun -n  8 ./pi_monte_carlo           100000000
	mpirun -n 16 ./pi_monte_carlo         10000000000

