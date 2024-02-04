Frequency <- c(0.6,0.3,0.4,0.4,0.2,0.6,0.3,0.4,0.9,0.2)
BP <- c(103,87,32,42,59,109,78,205,135,176)
First <- c(1,1,1,1,0,0,0,0,NA,1)
Second <- c(0,0,1,1,0,0,1,1,1,1)
FinalDecision <- c(0,1,0,1,0,1,0,1,1,1)

Frequency
BP
First
Second
FinalDecision


#If we try to find the mean of First, R will not calculate it because of the NA value
mean(First)
#to calculate the mean, we need to tell R to remove/ignore the NA value
mean(First,na.rm=T)

#However, if the NA was replaced by Null, R will ignore it
#we can use the mean function to calculate the mean without telling it to remove Null 
Firsttest <- c(1,1,1,1,0,0,0,0,NULL,1)
mean(Firsttest)

#First lets make simple histograms and boxplots
hist(BP)
hist(FinalDecision)
boxplot(BP, main="range of BP")
#the following boxplot does not really show us anything as the values in the data is only 0 or 1
boxplot(FinalDecision, main="Range of ratings")

#Now lets create a side by side boxplot
boxplot(FinalDecision,BP, main = "Range of MD ratings and Blood Pressure",col = "green")

#lets create a side by side histogram
par(mfrow = c(1,2))
hist(BP, main = "Frequency of BP", col = "orange")
hist(FinalDecision, main = "Frequency of low vs high BP ratings", xlab = "0=low 1=high", col = "yellow")
par(mfrow = c(1,1))


# we can compare the first and second doctors ratings compared to the final decision
par(mfrow = c(1,3))
hist(First)
hist(Second)
hist(FinalDecision)
par(mfrow = c(1,1))

#Now lets see if we can make a histogram and boxplot using a data frame
d <- data.frame(BP,FinalDecision)
d

boxplot(d)
hist(d$FinalDecision)
hist(d$BP)
hist(d$BP [d$FinalDecision == 0], main = "Frequency of BP ranked Low", xlab = "Blood Pressure", ylab = "frequency", col = "pink")
hist(d$BP [d$FinalDecision == 1], main = "Frequency of BP ranked High", xlab = "Blood Pressure", ylab = "frequency", col = "red")

boxplot(d$FinalDecision, main = "Doctors rating")
boxplot(d$BP, main = "Range of Blood Pressure among Patients", xlab = "BP", ylab = "BP", col = "purple")

boxplot(d$BP [d$FinalDecision == 0], main = "Range of Blood Pressure Ranked Low",col = "pink")
boxplot(d$BP [d$FinalDecision == 1], main = "Range of Blood Pressure Ranked as High",col = "red")


#now lets see if we can make a histogram and boxplot using a matrix
y <- matrix(c(BP,FinalDecision),ncol=2)

hist(y)
boxplot(y)

