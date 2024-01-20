#if you copy&paste the 2 lines of code from canvas you do not get the mean
#the first line assigns values to assignment2
#the second line defines the function myMean
assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)
myMean <- function(assignment2) {
  return(sum(assignment2)/length(assignment2)) 
}

#to actually calculate the mean we need to call the function
myMean(assignment2)

#you could also just use the mean function to calculate the mean
mean(assignment2)

#the myMean function can also work for other values
#for example, assigning different values to x
x <- c(10,20,30)

myMean(x)
mean(x)

