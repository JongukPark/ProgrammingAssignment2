##assignment02

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
    setInverse <- function(inverse) {
        m <<- inverse
    }

    ## Get the inverse
    getInverse <- function() {
        ## Return i
        m
    }

    ## Return the list
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}





## Write a short comment describing this function

cacheSolve <- function(x, ...) {

    ## Return the inverse of 'x'
    m <- x$get_Inverse()

    ## Return the set inverse
    if( !is.null(m) ) {
            message("getting cached data")
            return(m)
    }

    ## Get the matrix
    data <- x$get()

    ## Calculate the inverse
    m <- solve(data) %*% data

    ## Set the inverse to the object
    x$set_Inverse(m)

    ## Return
    m
}
