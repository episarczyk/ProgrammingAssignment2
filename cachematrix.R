## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##The goal of this function is to take the inverse of a matrix and cache it

makeCacheMatrix <- function(x = matrix()) {
	m<-NULL
	set<-function(y){

		x<<-y
		m<<-NULL
	}

	get<-function() x
	setinverse<-function(inverse) m<<-inverse
	getinverse<-function() m
	
	list(set=set, get=get, setinverse=setinverse,getinverse=getinverse)

}
##I based the above function on the Caching the Mean of a Vector exercise.
##Not entirely sure if I have it working properly.


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

	m<-x$getinverse()

	if(!is.null(m)){
		message("getting cached data")
		return(m)
	}

	data<-x$get()
	m<-inverse(data,...) 
	x$setinverse(m)
	m
}
