#debug the following function
#the function does not work


tukey_multiple <- function(x) {
  outliers <- array(TRUE,dim=dim(x))
  for (j in 1:ncol(x))
  {
    outliers[,j] <- outliers[,j] && tukey.outlier(x[,j])
  }
  outlier.vec <- vector(length=nrow(x))
  for (i in 1:nrow(x))
  { outlier.vec[i] <- all(outliers[i,]) } return(outlier.vec) }


#create an array to be used in our function
v2 <- c(4,5,6,7,8,9)
x <- array(v2, dim = c(3,3))
x

#lets print the value in row 1, column 2
x[1,2]
#lets change the value in row 1, column 2 to the number 5
x[1,2] <- 5
x[1,2]
#lets print the first row
x[1,]
#lets print the second column of the array
x[,2]

#this does not work because the function does not work
tukey_multiple(x)


###lets break down the function step by step
#first step is creating object outliers
#this creates an array with the values TRUE and the dimesions of 
#the array x
outliers <- array(TRUE,dim=dim(x))
outliers
dim(x)
dim(outliers)
outliers[,2]
outliers[1,2]


?array
#lets break down the first for loop
#it gives us the error:
#Error in outliers[, j] && tukey.outlier(x[, j]) : 
#'length = 3' in coercion to 'logical(1)'
for (j in 1:ncol(x)){
  outliers[,j] <- outliers[,j] && tukey.outlier(x[,j])
}
print(outliers[,j])

#lets remove the double && and change it to &
#now we get the error:
#Error in tukey.outlier(x[, j]) : could not find function "tukey.outlier"
#this is because tukey.outlier has not been defined
# we defined outliers in the function with outliers <- array(TRUE,dim=dim(x))
#in the final function we will define tukey.outlier
for (j in 1:ncol(x)){
  outliers[,j] <- outliers[,j] #& tukey.outlier(x[,j])
}
print(outliers[,j])


#now lets break down the second half of the function
# we define an object outlier.vec that creates a vector that has the 
#same length as the number of rows in x
outlier.vec <- vector(length=nrow(x))
outlier.vec
#next is a for loop
#for the values in the rows of x create an object that contains the
#values of the rows in x called outlier.vec
?all
#Given a set of logical vectors, are all of the values true?
#return/print outlier.vec
for (i in 1:nrow(x)){ 
  outlier.vec[i] <- all(outliers[i,])}
print(outlier.vec[i]) 
print(outlier.vec) 


tukey_multiple <- function(x) {
  #create an array called outliers consisting of the values TRUE with the dimensions
  #of the array we created previously called x
  outliers <- array(TRUE,dim=dim(x))
  #for the values in the columns of our array x
  #create a object called outliers[,j] that consists of 
  #the values in the columns of outliers and tukey.outlier
  #tukey.outlier is not defined so we need to define it
  #I am going to guess that we want tukey.outlier to be our array called x
  tukey.outlier <- x
  for (j in 1:ncol(x))
  {
    outliers[,j] <- outliers[,j] & tukey.outlier[,j]
  }
  #now we create a vector called outlier.vec where its length is equal to 
  #the number of rows of our array x
  outlier.vec <- vector(length=nrow(x))
  #for the values in the rows of x create an object that contains the
  #values of the rows in x that are TRUE called outlier.vec
  #return outlier.vec
  for (i in 1:nrow(x)){ 
    outlier.vec[i] <- all(outliers[i,]) 
    return(outlier.vec) }
}


#call the function
tukey_multiple(x)
#debug the function allows you to go through the function line by line
#to troubleshoot
debug(tukey_multiple)
tukey_multiple(x)


#the final function without all the comments
tukey_multiple <- function(x) {
  outliers <- array(TRUE,dim=dim(x))
  tukey.outlier <- x
  for (j in 1:ncol(x))
  {
    outliers[,j] <- outliers[,j] & tukey.outlier[,j]
  }
  outlier.vec <- vector(length=nrow(x))
  for (i in 1:nrow(x)){ 
    outlier.vec[i] <- all(outliers[i,]) 
    return(outlier.vec) }
}

tukey_multiple(x)
#this returns TRUE, FALSE, FALSE


outliers <- array(TRUE,dim=dim(x))
outliers
#this returns a 3x3 array with the values TRUE

outlier.vec <- vector(length=nrow(x))
outlier.vec
#this returns a 1x3 vector of FALSE

?vector
?all
#Given a set of logical vectors, are all of the values true?