## Put comments here that give an overall description of what your
## functions do.

## Write a short comment describing this function
makeCacheMatrix <- function(x = matrix()) {
## @x: a square invertible matrix
## return: a list containing functions to
## 	1. set the matrix
##	2. get the matrix
##  3. set the inverse
##  4. get the inverse
## Input to cacheSolve()
        
	inv = NULL
	# set() caches matrix x and placeholder inv for inverse of x
	set = function(y) {
		x <<- y
		inv <<- NULL
	}
	# get() returns cached matrix
	get = function() { x }
	# setinv() 
	setinv = function(inverse) { inv <<- inverse }
	getinv = function() { inv }
	list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
## @x: output of makeCacheMatrix()
# return: inverse of cached matrix        	
	# If inv is null then calculate inverse and cache it
	if (is.null(inv = x$getinv())) {
		mat.data = x$get()
		inv = solve(mat.data, ...)
		x$setinv(inv)
	}
	return(inv)
}
