##  The functions here will compute and cache the inverse of a matrix. The
##  matrix is cached because matrix inversion is usually a costly computation.


##  This function creates a special "matrix" function that can cache its inverse.

makeCacheMatrix <- function(x = matrix())
{
    m <- NULL
    set <- function(y)
    {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setmatrix <- function(matrix) m <<- matrix
    getmatrix <- function() m
    list(set = set, get = get, setmatrix = setmatrix, getmatrix = getmatrix)
}


##  This function computes the inverse of the special "matrix" returned by
##  makeCacheMatrix. If the inverse has been computed, and the matrix has not
##  changed, cacheSolve retrieves and returns the inverse from the cache.

cacheSolve <- function(x, ...)
{
    m <- x$getmatrix()
    if (!is.null(m))
    {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data)
    x$setmatrix(m)
    m
}
