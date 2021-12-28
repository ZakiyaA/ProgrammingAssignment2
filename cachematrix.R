## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


setwd('C:/Users/rubind1/Documents/Coursera-R')
## use random values between 0-100 to fill the matrix
## I simply set the input x as a matrixx
## and then set the solved value "s" as a null

makeCacheMatrix <- function(x = matrix(floor(runif(16, min=0, max=101)),4,4)) {
  j <- NULL
  set <- function(y){
    x <<- y
    j <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) j <<- inverse
  getInverse <- function() j 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}

## then I changed every reference to "mean" to "solve"
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  j <- x$getInverse()
  if(!is.null(j)){
    message("getting cached data")
    return(j)
  }
  mat <- x$get()
  j <- solve(mat,...)
  x$setInverse(j)
  j
}

