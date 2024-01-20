assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)
assignment2

mean(assignment2)

(sum(assignment2)/length(assignment2))

myMean <- function(x) {
  return(sum(x)/length(x)) 
}

myMean(assignment2)

x <- c(1,2)

myMean <- function(x) {
  return(sum(x)/length(x)) 
}
myMean(x)
myMean(assignment2)
