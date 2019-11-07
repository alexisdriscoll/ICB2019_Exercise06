setwd("~/Documents/junior/ICB_HW/ICB2019_Exercise06/")

#task 1: replicate head function
#variable to read file
filename <- read.csv(file = "iris.csv")
#variable with number of rows to be returned
numlines <- 5
#reads the first number rows from the specified file to be read
filename[1:x,]

#task 2
iris <- read.csv(file = 'iris.csv')
#print the last 2 rows in the last 2 columns
iris[(nrow(iris)-1):nrow(iris),(ncol(iris)-1):ncol(iris)]
#get the number of observations for each species included in the data set
length(iris)
#get rows with Sepal.Width > 3.5
iris[iris[,2]>3.5,]
#write the data for the species setosa to a comma-delimited file names 'setosa.csv'
write.csv(iris[iris[,5]=="setosa",], file = "setosa.csv", row.names=FALSE)
#calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
