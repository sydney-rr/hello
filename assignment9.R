data <- read.csv('/Users/sydneyrattey/downloads/satgpa.csv')
head(data)

#this shows us the data is a dataframe (we use $)
class(data)

plot(data$sat_sum,data$hs_gpa)

#the below command allows us to see the colors we can use to change our graphs/plots
colors()

#lets look at the frequency of sat scores
hist(data$sat_sum, main ="Frequency of SAT Scores", xlab="SAT Score", col="rosybrown1")

#lets look at the frequency of GPAs
hist(data$hs_gpa, main ="Frequency of High School GPAs", xlab="GPA", col="springgreen")

plot(data$hs_gpa,data$sat_sum, main = "High School GPA vs SAT", xlab="GPA",
     ylab="SAT", col="violetred", pch=16, cex=0.5)

#lets make each plot point a different shape with pch, lets make the points smaller with cex=0.5 (range is 0.5-2.5)
plot(data$hs_gpa,data$fy_gpa, main="High School vs First Year of College GPA", 
     xlab="High School GPA", ylab="First Year College GPA", col="mediumorchid3", pch=8, cex=0.5)


fourpointO <- subset(data, hs_gpa == 4.00, select = c(hs_gpa,sat_sum))
fourpointO
plot(fourpointO)
boxplot(fourpointO$sat_sum, main ="Range of SAT Scores for Students with 4.0 GPAs", 
        ylab="SAT scores", col="sienna1")
min(fourpointO$sat_sum)
max(fourpointO$sat_sum)


threeormore <- subset(data, hs_gpa >= 3.00, select = c(hs_gpa,sat_sum))
threeormore
plot(threeormore)
boxplot(threeormore$sat_sum, main ="Range of SAT Scores for Students with GPAs >= 3.0", 
        ylab="SAT scores", col="blueviolet")
min(threeormore$sat_sum)
max(threeormore$sat_sum)



twopointO <- subset(data, hs_gpa == 2.00, select = c(sat_sum, hs_gpa))
twopointO
plot(twopointO)
boxplot(twopointO$sat_sum, main ="Range of SAT Scores for Students with 2.0 GPAs", 
        ylab="SAT scores", col="yellow")
min(twopointO$sat_sum)
max(twopointO$sat_sum)


install.packages("lattice")
library(lattice)
xyplot(sat_sum~hs_gpa, data=data, pch=".", cex=2.5, main="GPA vs SAT score", 
       xlab="GPA", ylab="SAT score", col="orange")

histogram(~sat_sum, data=data, main="Frequency of SAT Scores", 
          xlab="SAT Scores", ylab="Frequency", col="green")

#lets try to visualize data in a 3D format
wireframe(sat_sum~sat_v * sat_m, data=data, xlab="Verbal SAT Score", 
          ylab="Math SAT Score", zlab="Total SAT Score", col="purple")


library(ggplot2)

#the following does not plot any data
ggplot(data, aes(hs_gpa,sat_sum))

#to plot the data we have to add the type of graph/plot we want
ggplot(data, aes(hs_gpa,sat_sum)) + geom_point(shape = 18, color = "red", size = 3)

ggplot(data, aes(hs_gpa,sat_sum)) + geom_point(colour = "red")

ggplot(data, aes(hs_gpa,sat_sum)) + geom_point(aes(colour = "red"))

#lets add a trendline
ggplot(data, aes(hs_gpa,sat_sum)) + geom_point() + geom_smooth()


#lets make the trendline linear and add a title and x and y axis labels
ggplot(data, aes(hs_gpa,sat_sum)) + geom_point(shape=20,colour ="red3", size=0.5) + geom_smooth(method = "lm") +
  labs(x= "High School GPA", y= "SAT Score", title = "High School GPA vs SAT Score")

#there is a lot of options for different kinds of graphs/plots
ggplot(data, aes(hs_gpa,sat_sum)) + geom_violin(fill="blue",colour="red")


ggplot(data, aes(sat_sum)) + geom_histogram(fill="white",colour="green") + 
  labs(x="SAT Scores of Students", y="Frequency", title="Frequency of SAT Scores")

ggplot(fourpointO, aes(fourpointO$hs_gpa,fourpointO$sat_sum)) + 
  geom_boxplot(fill ="violet",colour="green4") +
  labs(x="4.0 GPA",y="SAT Scores",title="Range of SAT Scores for 4.0 students")


