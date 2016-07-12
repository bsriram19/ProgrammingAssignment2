#
# Define a fucntion makeCachematrix that takes a matrx x as the input parameter. 
# The function caches the matrix x to another variable y
# The function returns a list that sets and gets the matrix and the matrix inverse
makeCacheMatrix <- function(x = matrix()) {
# Set the inverse of matrix to be NULL		
		inv <- NULL
# Set the Matrix and cache the matrix y to x and inv to NULL
		set <- function(y) {
		x <<- y
		inv <<- NULL
		}
# Get the Matrix - Returns the matrix x
		get <- function() x
# Set the inverse of the Matrix - Receive the inverse as a parameter and cache it to the inv variable
		setinv <- function(inverse) inv <<- inverse
# Get the inverse of the Matrix - Return the cached value of the inverse from the inv variable
		getinv <- function() inv
# Create the special vector, list that contains functions to set the value of the Matrix, Get the value of the matrix
# Set the value of the inverse of the Matrix, Get the value of the inverse of the matrix
		list(set = set, get = get, setinv = setinv, getinv = getinv)
}
