## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#This function creates a special Matrix for caching
#it inverse. To do this is actualy a list of functions
#that let as set, get the matrix and set/get the inverse

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(y){
		x <<- y
		inv <<- NULL
		}
	get <- function() {x}
	setinverse <- function(inver) {inv <<- inver}
	getinverse <- function() {inv}
	list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function
#This function calculates and set the inverse of the special matrix
#created by the makeCacheMatrix function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
        if(!is.null(inv)){
		print("Getting inverse!")
		return(inv)
		}
	mat <- x$get()
	inv <- solve(mat)
	x$setinverse(inv)
	inv
}
