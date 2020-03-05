#!/bin/bash
nodes=8
nprocs=16

sbatch -t 100 -N $nodes -n $nprocs ./run_openmp.sh

