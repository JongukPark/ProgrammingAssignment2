## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    
    ## Initialize the inverse property
    m <- NULL

    ## Set the matrix
    set <- function(y) {
            x <<- y
            i <<- NULL
    }
    
    ## Get the matrix
    get <- function() {
            m
    }

    ## Set_Inverse
    set_Inverse <- function(inverse) {
        i <<- inverse
    }

    ## Get the inverse
    get_Inverse <- function() {
        ## Return i
        i
    }

    ## Return the list
    list(set = set, get = get,
         setInverse = set_Inverse,
         getInverse = get_Inverse)
}





## Write a short comment describing this function

cacheSolve <- function(x, ...) {

    ## Return the inverse of 'x'
    i <- x$get_Inverse()

    ## Return the set inverse
    if( !is.null(m) ) {
            message("getting cached data")
            return(m)
    }

    ## Get the matrix
    data <- x$get()

    ## Calculate the inverse
    i <- solve(data) %*% data

    ## Set the inverse to the object
    x$set_Inverse(m)

    ## Return
    i
}
