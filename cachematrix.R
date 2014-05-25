## Put comments here that give an overall description of what your
## functions do
##These functions make it quicker to calculate the inverse of a matrix, if the inverse of the matrix has already been calculated, it keeps the inverse in memory so the calculation doesn't have to occur again, if the matrix has not been inverted, then it inverts it.

## Write a short comment describing this function
## Sets variable x to matrix type and then sets the values of the matrix and gets the values of the matrix, then sets the inverse of the matrix and gets the inverse of the matrix.

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set<- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setInverse <- function(solve) m <<- solve
    getInverse <- function() m
    list( set = set, get = get, setInverse = setInverse, getInverse = getInverse)
    

}


## Write a short comment describing this function
## Calculates the inverse of the matrix, but first checks to see if the inverse has already been calculated.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <-x$getInverse()
    if(!is.null(m)){
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <-solve(data, ...)
    x$setInverse(m)
    m
    
}
