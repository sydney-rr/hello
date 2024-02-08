
#Find the value of inverse of a matrix, determinant of a matrix by using the following values:
A <- matrix(1:100, nrow=10)  
B <- matrix(1:1000, nrow=10)
A
B
#the determinant of A is 0 and there is no determinant of B, as it is not a square matrix
det(A)
det(B)

#lets try to find the inverse, which does not work because the determinant of A is 0 and B is not a square matrix
solve(A)
solve(B)

t(A)
t(B)

#a <- c(1:100)
#b <- c(1:1000)
#b
#MA <- matrix(a, nrow=10)
#MB <- matrix(b, nrow=2)
#MA
#MB

#det(MA)
#det(MB)

#32 is a perfect square of 1024

#a <- t(A)
#b <- t(B)
#a
#b
#a %*% b



