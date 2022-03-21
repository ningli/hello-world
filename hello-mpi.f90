Program hello

  use MPI

  Integer :: err, size, rank
  Logical :: flag

  Call MPI_INITIALIZED(flag, ierr)
  write(*,*) 'initialized?', flag
  
  Call MPI_INIT(ierr)
  Call MPI_COMM_SIZE(MPI_COMM_WORLD, size, ierr)
  Call MPI_COMM_RANK(MPI_COMM_WORLD, rank, ierr)
  write(*,*) 'Hello from ', rank, ' of ', size
  Call MPI_FINALIZE(ierr)

  Call MPI_INITIALIZED(flag, ierr)
  write(*,*) 'initialized?', flag

End Program hello
