## Tests functioning of makeCacheMatrix() and CacheSolve()
test.cachematrix = function(test_mat){
# @test_mat: an invertible matrix
# Outputs results of test
  
  temp = makeCacheMatrix(test_mat)
  
  start.time = Sys.time()
  cacheSolve(temp)
  exec.time.uncached = Sys.time() - start.time
  message("Non-cached execution time is ", round(exec.time.uncached,2), " seconds.")
  
  start.time = Sys.time()
  cacheSolve(temp)
  exec.time.cached = Sys.time() - start.time
  message("Cached execution time is ", round(exec.time.cached,2), " seconds.")
  
  if (exec.time.uncached > exec.time.cached)
    message ("Cached lookup was shorter. All is well with the world.")
  else
    message("Hrrm. Something's not right. The cached time should be shorter.")
}