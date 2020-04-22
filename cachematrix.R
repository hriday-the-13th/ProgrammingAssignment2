## functions to cache and retrive the inverse of a given matrix.

## makeCacheMatri function cache the inverse of a given matrix.

makeCacheMatrix <- function(x = matrix()) {
  
  value <- NULL
  #set matrix value
  set <- function(y) {
    x <<- y
    value <<- NULL
  }
  # get matrix value
  get <- function() x    
  #set inverse value
  set_inv <- function(inv) value <<- inv
  #get inverse value
  get_inv <- function() value
  #list of functions
  list(set = set,
       get = get,
       set_inv = set_inv,
       get_inv = get_inv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  value <- x$get_inv()
  if (!is.null(value)) {
    message("retrieving cached matrix")
    return(value)
  }
  data <- x$get()
  value <- solve(data, ...)
  x$set_inv(value)
  value
}
