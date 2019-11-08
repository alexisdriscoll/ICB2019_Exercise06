#task 1: replicate head function
#variable to read file
filename <- "wages.csv"
#variable with number of rows to be returned
numlines <- 10
#reads the first number rows from the specified file to be read
print("first number of rows from the specified file to be read")
print(read.csv(file = filename)[1:numlines,])

#task 2
iris <- read.csv(file = "iris.csv")
#print the last 2 rows in the last 2 columns
print("the last 2 rows in the last 2 columns")
print(iris[(nrow(iris)-1):nrow(iris),(ncol(iris)-1):ncol(iris)])

#get the number of observations for each species included in the data set
print("the number of observations for each species included in the data set")
as.data.frame(table(iris[,5]))

#get rows with Sepal.Width > 3.5
print("rows with Sepal.Width > 3.5")
iris[iris[,2]>3.5,]

#write the data for the species setosa to a comma-delimited file names 'setosa.csv'
print("data for species setosa to file setosa.csv:")
write.csv(iris[iris[,5]=="setosa",], file = "setosa.csv", row.names=FALSE)
print(read.csv(file = "setosa.csv"))

#calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
print("mean of Petal.Length for observations from virginica")
mean(iris[iris[,5]=="virginica",3])
print("min of Petal.Length for observations from virginica")
min(iris[iris[,5]=="virginica",3])
print("max of Petal.Length for observations from virginica")
max(iris[iris[,5]=="virginica",3])
