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