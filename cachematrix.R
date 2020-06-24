## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## The first function sets the inverse "inverso" value to Null, then sets the function to work: calculate the inverse using solve, get the inverse and finally
## print the list of cache spaces used.

makeCacheMatrix <- function(x = matrix()) {
    inverso <- NULL
    set <- function(y) {
      x <<- y
      inverso <<- NULL
    }
    get <- function() x
    setInverso <- function(solve) inverso <<- inverso
    getInverso <- function() inverso
    list(set = set, get = get,
         setInverso = setInverso,
         getInverso = getInverso)
}

## Write a short comment describing this function
## This function looks for the inverse in x$getInverso(), then analyses if it is Null, it will calculate a new one by getting the data into "data"
## with the x&get function.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inverso <- x$getInverso()
  if(!is.null(inverso)){
    message("getting cached data")
    return(inverso)
  }
  data <- x$get()
  inverso <- solve(data)
  x$setInverso(inverso)
  inverso 
}
