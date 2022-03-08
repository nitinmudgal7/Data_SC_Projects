rm(list=ls()) #Cleared the environment

Name<- c("Nitin", "Atif", "Aeshna", "Mayank", "Ashish") #store all name values, will be used as column name
Month<- c("January", "February", "March", "April", "May", "June") #store all month names, will be used as rowname
#create vectors consisting of salary values
Nitinsalary<- c(10000, 12000, 10000, 13000, 18000, 16000)
Atifsalary<- c(11000, 13000, 10000, 12000, 13000, 17000)
Aeshnasalary<- c(15000, 13000, 13000, 11000, 16000, 16000)
Mayanksalary<- c(16000, 14000, 15000, 14000, 17000, 12000)
Ashishsalary<- c(17000, 17000, 16000, 12000, 19000, 13000)

#create one matrix by combinding all the salary rows
matrix<- rbind(Nitinsalary, Atifsalary, Aeshnasalary, Mayanksalary, Ashishsalary)
#Rename column name and row name
colnames(matrix) <- Month
rownames(matrix) <- Name

#print matrix
matrix

#ways to fetch values stored at an intersection point
nmapril<- matrix[1,4]
matrix["Nitin", "March"]
