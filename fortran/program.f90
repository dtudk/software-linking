program linking_blas

   implicit none

   integer, parameter :: N = 100 ! Size of the matrices
   real :: a(N, N), b(N, N), c(N, N)
   external :: sgemm

   print *, "Running simple program calling BLAS sgemm"

   ! Initialize some numbers in the arrays.
   ! Note we also call a function here `random_number`.
   ! This is an *intrinsic* fortran function. We don't
   ! need any external library to use this function.
   call random_number(a)
   call random_number(b)
   call random_number(c)

   ! Here we call the BLAS routine called `sgemm`
   call sgemm("N", "N", N, N, N, 1., a, N, b, N, 0., c, N)

   print *, "Done"

end program
