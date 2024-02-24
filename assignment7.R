#lets load the datasets package
library(datasets)
#lets see a list of data available in R's dataset package
data()

#lets view the DNase dataset values
DNase

#object=data, mode=type of data

ls(DNase)
mode(DNase) #automatically assigned to data depending on what is stored in DNase
class(DNase) #can be changed by user (determines how functions interact with the data)
attributes(DNase) #check the class
isS4(DNase) #is it S4 or S3?

#lets determine the base type (integer, character, etc..)
is.character(DNase)
is.vector(DNase)
is.list(DNase) #the data in DNase is a list

#lets try to create a S4 object. The following code does not work
#this is because S4 objects are not assigned a class by default
#we have to assign a class to the object manually
example1 <- new("animal", type="dog", lifespan=10)
example1

#lets create a S4 object that works
#first we give the object a class using setClass()
#then we can create the S4 object
setClass("student", representation(name="character",age="numeric", GPA="numeric"))
example2 <- new("student",name="Myself", age=29, GPA=3.5)
example2

#lets check if it is an S4 object
isS4(example2)
mode(example2)
class(example2)
attributes(example2)

#lets create another S3 object
x <- matrix(1,2,3,4)
x
isS4(x)
mode(x)
class(x)
x[1,1]

#lets create another S4 object
setClass("values", representation(value1="numeric",value2="numeric",value3="numeric",value4="numeric"))
y <- new("values", value1=1,value2=2,value3=3,value4=4)
y
isS4(y)
mode(y)
class(y)
attributes(y)
#lets view value4 in y
y@value4

#another S3
z <- list("purple", "yellow", "green")
z
#default class of z is list
class(z)
attributes(z)
#lets easily change its class
class(z)="color"
class(z)
attributes(z)
mode(z)
isS4(z)

