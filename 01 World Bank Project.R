rm(list=ls())
#to get working directory
getwd()

#update working directory
setwd("/Users/nitinmudgal/Downloads")

#choose manually which file to be read
stats<- read.csv(file.choose())

#read csv file from directory and store it in Dataframe
stats<- read.csv(file = "P2-Demographic-Data.csv")

#Few Important functions
nrow(stats) #check number of rows in dataframe  
ncol(stats) #number of columns in data frame
head(stats,n=10) #show column header and top n rows of data 
tail(stats,n=5) #shows column header and data of bottom n rows 
str(stats) #function gives structure of data frame , which column is of which type
summary(stats) #provides a quick summary, how each column holds the data

#convert a column into factor/levels
library(magrittr)
stats$Income.Group %<>% factor
#way2
factor(merged$Region)

#using $ sign
stats$Birth.rate #Dataframe name followed by $ followed by column name provides that particular column of data frame
levels(stats$Income.Group) #check different type of factors present in a column, can be useful in grouping by the data basis on different types


#*******************Basic operations with a data frame*****************************

stats[3,] #getting only third row
stats[c(3,100),] #getting two different numbered rows
stats[1:3,] #getting a range or rows
head(stats,n=5) #getting top 5 rows

stats[,3,drop = F] #using drop F would give a data frame other wise if a column selected it would return a vector
stats[,c(4,5)] #selecting two columns

#multiplying two columns
stats$Birth.rate * stats$Internet.users
stats$Birth.rate + stats$Internet.users
#adding a new column to dataframe
stats$mult <- stats$Birth.rate * stats$Internet.users
stats$add <- stats$Birth.rate + stats$Internet.users
#deleting column from data frame
stats$mult <- NULL
stats$add <- NULL 

stats

#**********************filtering a data frame*****************************
filter<- stats$Internet.users <2 #this will create a vector with TRue False values
stats[filter,] #if we select rows from stats dataframe and supply "filter" in rows criteria then it will bring on only those rows where value of filter vector is True

#this condition to filter data can directly be supplied for the rows that we want to select from a data frame
stats[stats$Birth.rate > 40,] #providing one filtering condition
stats[stats$Birth.rate>40 & stats$Internet.users < 2,] # clubbing two criteria, this can be done by using "&" sign
stats[stats$Country.Name == "Malta",] #fetching rows for a single country



#**********************Introduction to qplot*****************************
library("ggplot2")
?qplot

qplot(data = stats, x = Income.Group, y = Birth.rate, size = I(3), color = I("Blue"), geom = "boxplot")

qplot(data = stats, x = Birth.rate, y = Internet.users, color = Income.Group, size = I(5))
#closely looking at this graph it can be obserevd that high income group countries have more internet users and less birth rate while low income countries have high birth rate and low internet usage


#*****************Creating a data frame ************************

#approach1
mydata<- data.frame(Countries_2012_Dataset, Codes_2012_Dataset, Regions_2012_Dataset) #binding vectors using data.frame function
colnames(mydata)<- c("Country", "Code", "Region")

rm(mydata)

#approach2, Creating dataframe and naming the columns at the same time
mydata<- data.frame(Country = Countries_2012_Dataset, Code = Codes_2012_Dataset, Region = Regions_2012_Dataset)
head(mydata)
tail(mydata)


#*****************Merging data frames ************************

merged<- merge(stats, mydata, by.x = "Country.Code", by.y = "Code") #data will be merged basis on the values matched in Countr.code and Code columns
merged$Country <- NULL #delete column which is appearing twice

str(merged)

#change Region column from char to factor/values
library(magrittr)
merged$Region %<>% factor


#********************Analyzing Data frame for region wise data insights*****************

qplot(data=merged, x = Internet.users, y = Birth.rate, color = Region, size = I(5)) #Basic Plot

#Shape
qplot(data=merged, x = Internet.users, y = Birth.rate, color = Region, size = I(5), shape = I(15))

#Transparency
qplot(data=merged, x = Internet.users, y = Birth.rate, color = Region, size = I(5), alpha= I(0.6))

#Title
qplot(data=merged, x = Internet.users, y = Birth.rate, color = Region, size = I(5), alpha= I(0.6), main = "Birth Rate vs Internet Usage")
