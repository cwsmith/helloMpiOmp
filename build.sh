module load xl_r/16.1.1 spectrum-mpi
set -x
mpifort -qsmp hello.f90 -o fhello
mpicc -qsmp hello.c -o chello
set +x
