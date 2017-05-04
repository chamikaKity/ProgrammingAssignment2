## Caching the Inverse of a Matrix

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(m=matrix()){
        
        inv <- NULL
        set <- function(y){
                m <<- y
                inv <<- NULL
        }
        get <- function() m
        setinverse <- function(solve) inv <<- solve
        getinverse <- function() inv
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed),
## then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(m,...){
        
        inv <- m$getinverse()
        if(!is.null(inv)){
                message("getting cached data")
                return(inv)
        }
        data <- m$get()
        inv <- solve(data,...)
        m$setinverse(inv)
        inv
}
