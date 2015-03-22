## The file contains to functions "makeCacheMatrix" and "cacheSolve"
#  Together these functions help evaluate the inverse of a matrix and 
#  cache the value for easy future retrieval


## makeCacheMatrix returns a list of 4 functions on a provided Matrix "x"

#  inverse_cache - represents a cache for the inverse of Matrix "x"
#  get -  Returns the contents of the Matrix "x"
#  set(y) - Assigns "x" the values in Matrix "y" and clears contents in "inverse_cache"
#  getInverse - Returns the contents in "inverse_cache"
#  setInverse(inverse) - Assigns "inverse_cache" the values in Matrix "inverse"

makeCacheMatrix <- function(x = matrix()) {
        inverse_cache <- NULL
        
        get <- function() x
        
        set <- function(y = matrix()){
                x <<- y
                inverse_cache <<- NULL
        }
        
        getInverse <- function() inverse_cache
        
        setInverse <- function(inverse = matrix()){
                inverse_cache <<- inverse
        }    
        
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## cacheSolve evaluates the inverse for a Matrix object "x" of the type generated
## by "makeCacheMatrix" function.

## It checks if "x" has a computed inverse in its cache from the "getInverse" function.
## If TRUE, it returns the cached inverse.
## If NOT TRUE, it calculates the inverse using the "solve" function and stores 
## the inverse in the cache using the "setInverse" function and returns the inverse

# inverse - stores the inverse of the Matrix "x"
# tempMatrix - temporarily stores the value of Matrix "x" for computing the inverse

cacheSolve <- function(x, ...) {
        inverse <- x$getInverse
        
        # to check if inverse has been cached
        if (!is.null(inverse)){
                message("getting cached inverse")
                
                # return the cached inverse
                return(inverse)
        }
        
        tempMatrix <- x$get
        # solve(x) returns the inverse matrix for "x"
        inverse <- solve(tempMatrix, ...)
        # set the computed inverse
        x$setInverse(inverse)
        # return the inverse
        inverse
}
