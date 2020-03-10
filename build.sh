module load xl_r/16.1.1 spectrum-mpi
set -x
mpifort -qsmp=omp hello.f90 -o fhello -L/opt/ibm/lib/ -lxlomp_ser
#mpifort -qsmp=omp hello.f90 -o fhello -L/opt/ibm/lib/ -lxlomp_ser # spack petsc adds this
mpicc -qsmp=omp hello.c -o chello
set +x
