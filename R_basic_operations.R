******** Variable Types **********

#integer
x <- 2L
typeof(x)


#double
y<- 2.5
typeof(y)


#complex
z <- 3+2i
typeof(z)

#character
a <- "h"
typeof(a)


#logical
q <- F
typeof(q)

****************Logical operators********************
#logicaloperators

#True T/TRUE
#False F/FALSE

4<5

10>100

4==5

# == (Double equal sign for equals to)
#!= (not equals to)
#>less than
# <greater than
# ! not
# | or 
# & and
# isTRUE(x)

result <- 5>4
result2 <- !result

result3<- !(5>4)

result | result2

result & result2

isTRUE(result)

isTRUE(result2)

********** Loops ************
# whileloop
counter <- 1 #assigned value of counter to 1
#running while loop, it will check value of counter and print it untill it is less than 12
while(counter <12){print(counter)
  counter <- counter+1} # will add 1 to the value of counter every time it executes

#Forloop
counter <- 1
while(counter<12){
  print(counter) 
  counter <- counter +1}

for(i in 1:5){
  print("Hello R")
}
******* working with vectors ************
#create a vector of 10 digits and print only odd numbers 
rm(list = ls())
Vector<- c(1:10)
c<-1
while(c<=10){
  result<- Vector[c]
  print(result)
  c<- c+2
}

#create two vecotrs of same length and combined at row level and then print all elements of that 2X4 array/vector
rm(list =ls())
Vector1<- c(1:4)
Vector2<- c(5,6,7,8)
Vector3<- rbind(Vector1,Vector2)
  for(j in 1:8){
    result<- Vector3[j]
    print(result)
  }

#create vectors with repetitive caharacters in it
Charvec<- rep("Hello",10)
#create vectors with sequences
Charvec<- seq(1,15)
Charvecc<- 1:15
Charvec<- seq(0,10,2)

rm(list = ls())
#create two vectors and then add/subtract
Vector1<- seq(1:5)
Vector2<- seq(2,10,2)
Add<- Vector1+Vector2
sub<- Vector2-Vector1

******************
