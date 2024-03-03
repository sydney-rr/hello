#this imports a file into R, a screen will pop up asking you to select the file to import
z = read.table(file.choose(), header = T, sep = ",")

#Need to set header = True for the header of the file to be displayed in the table
#Need sep ="," to get rid of the commas in the original file
u = read.table("/Users/sydneyrattey/downloads/assignment8.txt",header = F)
u
class(u)

#this will import a file into R that you have told R where to find it
#sep = "," gets rid of the commas in the file
x = read.table("/Users/sydneyrattey/downloads/assignment8.txt",header = T, sep =",")
x
class(x)

#lets try different ways to import the file we need
#lets try to scan a file into R
#this is used primarily when the file only contains numbers
#because the file contains more than numbers the following code gives an error
scan("/Users/sydneyrattey/downloads/assignment8.txt")

#to fix the error tell R to split the values by spaces
scan("/Users/sydneyrattey/downloads/assignment8.txt", what = "")

#another way to import files into R
#this reads a file line by line
readLines("/Users/sydneyrattey/downloads/assignment8.txt")

#plyr is a package that helps you easily manipulate data
install.packages("plyr")
library(plyr)

#lets take the file named x that we imported/edited
#and find the average grade for each gender
# the following code will display x with an extra column comprised of the average grade for each sex
y= ddply(x,"Sex",transform,Grade.Average=mean(Grade))
x
y

#If we use summarize instead of transform it just shows 2 columns: Sex and the average grade for each sex
z= ddply(x,"Sex",summarize,Grade.Average=mean(Grade))
z

#if you want to add multiple columns to x you can use mutate
#this adds a column that sums all of the grades for each sex and a column that finds the average grade for each sex
f= ddply(x,"Sex",mutate, sumofgrades = sum(Grade), Grade.Average=mean(Grade))
f

#ddply(d,”year”,mutate,total.count = sum(count),mean.count = mean(count))



#lets write y to a file/table
write.table(y,"Sorted_Average")

#lets change the table and have the values seperated by a comma to create a csv file
write.table(y,"Sorted_Average", sep=",")


#now we want to filter the file to only contain names that contain an I/i
# subset(file you are filtering, what you are filtering by, what section of the file you are filtering)
# subset(filter file x, by the letter i/I, in the column "Name")
newx = subset(x,grepl("[iI]",x$Name))
newx

#create a file containing newx titled DataSubset
write.table(newx,"DataSubset", sep=",")
