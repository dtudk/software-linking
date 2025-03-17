subroutine sgemm(transa, transb, M, N, K, alpha, A, LDA, B, LDB, beta, C, LDC)
   implicit none
   character, intent(in) :: transa, transb
   integer, intent(in) :: M, N, K, LDA, LDB, LDC
   real, intent(in) :: A(LDA, *), B(LDB, *)
   real, intent(in) :: alpha, beta
   real, intent(inout) :: C(LDC, *)

   integer :: i, l, j

   print *, "Calling sgemm from my library!"

   do j = 1, N ! columns of B (assuming transb = "N")
      do i = 1, M ! rows of A (assuming transa = "N")
         do l = 1, K ! columns of A, rows of B (assuming transa = transb = "N")
            C(i, j) = beta * C(i,j) + alpha * A(i,l) * B(l,j)
         end do
      end do
   end do

end subroutine sgemm
