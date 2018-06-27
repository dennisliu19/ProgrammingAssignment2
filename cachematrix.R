## Put comments here that give an overall description of what your
## functions do
# The function, makeCacheMatrix makes a list functions to
# 
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the inverse of the matrix
# 4, get the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
  
  inverse <- NULL
  let <- function(y){
    x <<- y
    inverse <<- NULL
  }
  
  get <- function(){
    x
  }
  
  setinverse <- function(inv){
    inverse <<- inv
  }
  
  getinverse <- function(){
    inverse
  }
  list(set=set,get=get,
       setinverse=setinverse,
       getinverse=getinverse)
}


## Write a short comment describing this function
# The funtion first check whether the inverse has been computed. If it has been computed, the function will return the inverse.
# If the inverse has noe been computed, the function will compute the inverse and return. 

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$inverse
  if (!is.null(inv)){
    message("getting data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat)
  x$setinverse(inv)
  inv
}
