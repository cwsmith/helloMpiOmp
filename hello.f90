program hello
  use omp_lib
  include 'mpif.h'
  integer nthreads, maxthreads, tid
  integer rank, size, ierror, tag, status(MPI_STATUS_SIZE)
   
  call MPI_INIT(ierror)
  call MPI_COMM_SIZE(MPI_COMM_WORLD, size, ierror)
  call MPI_COMM_RANK(MPI_COMM_WORLD, rank, ierror)

  maxthreads = omp_get_max_threads()
  !$omp parallel
  !$omp master
  nthreads = omp_get_num_threads()
  !$omp end master
  !$omp end parallel

  print *, rank, 'number of threads = ', nthreads
  print *, rank, 'max threads = ', maxthreads

  call MPI_BARRIER(MPI_COMM_WORLD, ierror);
  if( rank == 0) then
    print *, 'done'
  end if
  call MPI_FINALIZE(ierror)
end

