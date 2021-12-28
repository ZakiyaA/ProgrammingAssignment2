## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


setwd('C:/Users/rubind1/Documents/Coursera-R')
## use random values between 0-100 to fill the matrix
## I simply set the input x as a matrixx
## and then set the solved value "s" as a null
## then I changed every reference to "mean" to "solve"
makeCacheMatrix <- function(x = matrix(floor(runif(16, min=0, max=101)),4,4)) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setInverse <- function(solve) s <<- Inverse
  getInverse <- function() s
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}
##
## Same here, changed "mean" to "Inverse" and "m" to "s"
cacheInverse <- function(x, ...) {
  s <- x$getInverse()
  if(!is.null(s)) {
    message("getting inversed matrix")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setInverse(s)
  s
}

