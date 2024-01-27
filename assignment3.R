#the following 3 lines of code was copy and pasted from assignment3
#each line attempts to create a vector
#lines 2 and 3 do not work because a sentence is given. There needs to be no spaces

Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Berine")

ABC political poll results <- c(4,62,51,21,2,14,15)

CBS political poll results <- c(12,75,43,19,1,21,19) 

Name
mode(Name)

ABC political poll results
CBS political poll results

#Lets rewrite the 2nd and 3rd lines of code correctly

ABC_results <- c(4,62,51,21,2,14,15)
ABC_results
mode(ABC_results)

CBS_results <- c(12,75,43,19,1,21,19)
CBS_results
mode(CBS_results)

#lets make a list with all of that data
totalresults <- list(name=Name, ABC=ABC_results, CBS=CBS_results)
totalresults

#lets make a data frame, which organizes the data in a clearer table
d <- data.frame(Name,ABC_results,CBS_results,stringsAsFactors = F)
d

#lets print the first row
d[1,]

#lets print the second row
d[2,]

#lets print the second column
d[,2]

#lets print the 3rd column
d[,3]

#lets get the abc results for jeb
d[1,2]

#lets look at all of the abc results for the last 3 candidates
d[5:7,1:2]

