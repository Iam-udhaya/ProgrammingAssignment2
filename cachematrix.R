

## setting and getting the values of matrix

makeCacheMatrix <- function(x = matrix()) {
	i <- NULL
	set <- function(y) {
		x <<- y
		i <<- NULL
	}
    get <- function() x
    setinverse <- function(solve) i <<- solve
    getinverse <- function() i
    list (set = set, get = get, setinverse = setinverse,getinverse = getinverse)
}


## To check if the inverse is already calculated

cacheSolve <- function(x, ...) {
	i <- x$getinverse()
	if(!is.null(i)) {
		message("getting cached result")
		return (i)
	}
	data <- x$get()
	i <- solve(data)
	x$setinverse(i)
	i
        
}
