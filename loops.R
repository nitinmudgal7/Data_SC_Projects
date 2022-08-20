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


****Few Real time operations*****

#printfibonacci
rm(list=ls())
t1<- -1
t2<- 1
n<- 1
while(n <=10){
  t3<- t1+t2
  print (t3)
  t1<- t2
  t2<- t3
  n<- n+1
}

#printfirst10powersof2
rm(list=ls())
n<-2
c<-1
while(c<10){
  print(n)
  n= n*2
  c= c+1
}


#print first 10 odd numbers
rm(list=ls())
n1 <- 1
c<- 1
while(c<= 10){
  print(n1)
  n1 <- n1+2
  c <- c +1
}

#print first 10 even number
rm(list=ls())
n1<- 0
c<- 1
while(c<= 10){
  print(n1)
  n1<- n1+2
  c<- c+1
}


#print first 10 prime numbers
rm(list=ls())
n1<- 1
c<- 2
while(c<=100){
  i<-1
  counter<- 0
  for(i in 1:c){
    div<- c%%i
    if(div==0){
      counter<- counter + 1
    }
    i<-i+1
  }
  if(counter<3){
    print(c)  
  }
  c<- c+1
  n1<- n1+1
  }


#for loop
rm(list=ls())
x<- rnorm(1)
if(x>1){
  result<- "x is greater than 1"
} else if(x < -1){
  result<- "x is less than -1"
} else{
  result<- "x is between -1 and 1"
}
print(result)
