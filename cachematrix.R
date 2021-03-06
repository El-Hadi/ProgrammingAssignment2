## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#this function is used to cache matrix inverse
makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set <-function(y){
    x<<-y
    m<<-NULL
    
  }
  get<-function()x
  
  setinv<-function(i){
    m<<-i
  }
  
  getInverse<-function()m
  list(set=set,get=get,setinv=setinv,getInverse=getInverse)
}


## Write a short comment describing this function
#this function is used to solve matrix inverse
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-x$getInverse()
  if(!is.null(m)){
    message("print cached inverse")
    return(m)
  }
  data<-x$get()
  m<-solve(data,...)
  #print(class(m))
  x$setinv(m)
  m
}
