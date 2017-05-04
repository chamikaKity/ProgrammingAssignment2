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