#If any piece of code has to be reused, function can be created for that and in that function variables can be supplied by just providing a name in function input, that name should have been used inside function already 


myplot<- function(mtrx, rows=1:10, columns=1:10){
  matplot(t(mtrx[rows,columns]), type = 'b', pch = 15:18, col = c(1:4,6))
  legend("bottomleft", inset= .01, legend = Players[rows], col = c(1:4,6), pch = 15:18, horiz=F)
}

#above created function can directly be used by providing input parameter, if input parameters not provided then function will take default values that were assigned while creating the function

myplot(Games,1:5, 1:6)


#Further playaround with data using the function (myplot()) that I created
#Salary
myplot(Salary)
myplot(Salary/Games)
myplot(Salary/FieldGoals)

#In-game Metrics
myplot(MinutesPlayed)
myplot(Points)


#In-game Metrics Normalised
myplot(FieldGoals/Games)
myplot(FieldGoals/FieldGoalAttempts)
myplot(FieldGoalAttempts/Games)
myplot(Points/Games)

#moreobservations
myplot(MinutesPlayed/Games)

#mostefficientuseoftime
myplot(FieldGoals/MinutesPlayed)


#Player Style
myplot(Points/FieldGoals)
