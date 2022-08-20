?matplot
matplot(t(Salary), type = 'b', pch = 15:18, col = c(1:4,6)) #function to plot the Graph
legend("topright", inset= .01, legend = Players, col = c(1:4,6), pch = 15:18, horiz=F) # legend function to specify which trend is for which column, color selection should be the same


#takingsubsetofmatrix
FieldGoals[1:4,1:5] #would return matrix
Games[1:3, 6:10] #would return matrix
Games[1,] #by default this would return a vector because R drops unwanted dimension
Games[1,,drop = F] #if defined not to drop then it will return as matrix



#visualizing subset data
matplot(t(Salary[1:3,,drop = F]), type = 'b', pch = 15:18, col = c(1:4,6)). #only taking data for top3 players
legend("topright", inset= .01, legend = Players[1:3], col = c(1:4,6), pch = 15:18, horiz=F)
