
#Find the value of inverse of a matrix, determinant of a matrix by using the following values:
A <- matrix(1:100, nrow=10)  
A
B <- matrix(1:1000, nrow=10)
B
#the determinant of A is 0 and there is no determinant of B, as it is not a square matrix
det(A)
det(B)

#lets try to find the inverse, which does not work because the determinant of A is 0 and B is not a square matrix
solve(A)
solve(B)

#first lets transpose the matrices
transposeA <- t(A)
transposeA

#create a vector, rnorm(10) creates 10 random values with a norm dist
#replicate 10 replicates the function 10 times, to get 100 values
a <- replicate(10,rnorm(10))
a

#multiply our transposed matrix by the vector we created
X = transposeA * a
X

#convert our vector into a matrix
matrixa <- matrix(a,nrow=10)
matrixa

#multiply our matrix by our new matrix
multiplymatricesA <- X%*%matrixa

multiplymatricesA

#Find the multiplied matrix's determinant and inverse
det(multiplymatricesA)
solve(multiplymatricesA)


B <- matrix(1:1000, nrow=10)
B

transposeB <- t(B)
transposeB

b <- replicate(10,rnorm(100))
b

Y=transposeB*b
Y

matrixb <- matrix(b,nrow=10)
matrixb

multiplybY=matrixb%*%Y
det(multiplybY)
solve(multiplybY)




