## The 2 functions in this R file can be used for
## cashing and computing the inverse of a matrix

## The first function is makeCacheMatrix() which
## makes a matrix object which cashes its inverse

makeCacheMatrix <- function(mtx = matrix()) {
  inverse <- NULL
  set <- function(x) {
    mtx <<- x;
    inverse <<- NULL;
  }
  get <- function() return(mtx);
  setinv <- function(inv) inverse <<- inv;
  getinv <- function() return(inverse);
  return(list(set = set, get = get, setinv = setinv, getinv = getinv))
}


## This is the cacheSolve() function.
## It computes the inverse of the matrix created by makeCacheMatrix().
## It gets the inverse from the cache if the inverse has already been calculated.


cacheSolve <- function(mtx, ...) {
  inverse <- mtx$getinv()
  if(!is.null(inverse)) {
    message("Getting cached data...")
    return(inverse)
  }
  data <- mtx$get()
  invserse <- solve(data, ...)
  mtx$setinv(inverse)
  return(inverse)
}