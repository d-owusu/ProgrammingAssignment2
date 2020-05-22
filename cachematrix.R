## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

        #initialize matrix
        i<-NULL
        
        ## set the matriix 
        set<- function(matrix) {
                m<<-matrix()
                i<<-NULL
        }
        
        ## get the matrix
        get <- function(){
                m
        }
        
        ##set the invese
        setInverse<- function(inverse){
                i <<- inverse
        }
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        
        ## Return a matrix that is the inverse of 'x'
        #Return a matrix that is the inverse of x
        m <- x$getInverse()
        
        ## Just return the inverse if its already set
        if(!is.null(m)) {
                
                message('getting cached data')
                return(m)
                
        }
        
        ##Get the matrix from our object
        data<-x$get()
        
        ## calculate the inverse using matrix muliplication
        
        m<-solve(data) %*% data
        
        ##set the inverse to the object
        
        x$setInverse(m)
        
        ##Return matrix
        
        m
}
