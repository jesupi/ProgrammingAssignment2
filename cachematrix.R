## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  
  get <- function() x
  
  setSolve <- function(solve) s <<- solve
  
  getSolve <- function() s
  
  list(set = set, get = get, setSolve = setSolve, getSolve = getSolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  s <- x$getSolve()
  if (!is.null(s)) {
    print("INFO: Getting from cache.")
    return(s)
  } 
  
  print("INFO: Not getting from cache.")
  s <- solve(x$get(), ...)
  x$setSolve(s)
  s
}
