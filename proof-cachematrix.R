## Proves that cacheSolve returns inversion
proof.cachematrix <- function(test_mat){
  # @test_mat: An invertible square matrix
  # Outputs results of test

  temp <- makeCacheMatrix(test_mat)
  inv_test_mat <- cacheSolve(temp)
  ident_mat <- test_mat %*% inv_test_mat
  diag_uniques <- unique(diag(ident_mat))
  diaguniquecheck <- diag_uniques == 1
  diaglengthcheck <- length(diag_uniques) == 1
  identcheck <- diaguniquecheck & diaglengthcheck
  if (identcheck) {
    message ("The dot product of the two matrices is a valid identity matrix.")
  } else {
    message ("Something's wrong. The dot product is not a valid identity matrix.")
  }
}