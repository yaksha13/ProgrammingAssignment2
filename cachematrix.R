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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        
        ## Return a matrix that is the inverse of 'x'
}
