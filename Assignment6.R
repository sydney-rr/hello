A=matrix(c(2,0,1,3), ncol=2)
B=matrix(c(5,2,4,-1), ncol=2)
A+B
A-B

# Using the diag() function to build a matrix of size 4 
#with the following values in the diagonal 4,1,2,3.

#the code is me following an example in the textbook, this does not get me the result I want
C=matrix(c(4,1,2,3), ncol=2)
C
diag(C)
dc <- diag(C)
dc
diag(dc)

#diag(x, nrow, ncol) The Following code gets me the correct answer
X=c(4,1,2,3)
diag(X, nrow=4)


#Generate the following matrix:
  ## [,1] [,2] [,3] [,4] [,5]
  ## [1,] 3 1 1 1 1
  ## [2,] 2 3 0 0 0
  ## [3,] 2 0 3 0 0
  ## [4,] 2 0 0 3 0
  ## [5,] 2 0 0 0 3

#diag(x, nrow, ncol)

#this gets me dimensions I want, but not the correct values
diag(5) 
#lets first correct the diagonal values we want 
Y=c(3)
diag(Y, nrow=5)
#now we have the correct diagonal values, lets assign this matrix a name
matrixY <- diag(Y, nrow=5)
matrixY

#now lets change the first row and column of the matrix to the values we want
matrixY[1,c(2,3,4,5)] <- 1
matrixY

matrixY[c(2,3,4,5),1] <- 2
matrixY
