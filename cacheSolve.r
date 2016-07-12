# Define a function cacheSolve that solves for the inverse of the matrix
# It first checks to see if the inverse has been calculated and gets the inverse from the cache and skips the computation
# Otherwise, it calculates the inverse of the matrix and sets the value of the inverse in the cache via the setinv function.
cacheSolve <- function(x) {
		inv <- x$getinv()
# Check if inverse has already been computed and return the inverse from the cahce
		if(!is.null(inv)) {
			message("getting cached data")
			return(inv)
		}
# If inverse is NULL obtain the value of the matrix x using the get function  and assign it to the data variable		
		data <- x$get()
# Solve for the inverse of the matrix using the solve function
		inv <- solve(data)
# Set the inverse of the matrix in the makeCachematrix function using the setinv function		
		x$setinv(inv)
# Return the inverse		
		inv
}
