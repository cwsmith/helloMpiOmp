#!/bin/bash
nodes=1
nprocs=6

sbatch -t 100 -N $nodes -n $nprocs ./run_openmp.sh

