rm(list = ls())
getwd()
setwd("/Users/nitinmudgal/Downloads")
movies<- read.csv(file = "P2-Movie-Ratings.csv")
head(movies)
colnames(movies)<- c("Film", "Genre", "CriticRating", "AudienceRating", "BudgetMillions", "Year")
tail(movies)
str(movies)
summary(movies)


library(magrittr)
movies$Film %<>% factor
movies$Genre %<>% factor
movies$Year %<>% factor

#********* Working with aesthetics
library(ggplot2)
ggplot(data = movies, aes(x = CriticRating, y = AudienceRating))


#adding geometry
ggplot(data = movies, aes(x = CriticRating, y = AudienceRating)) + 
  geom_point()

#add colors
ggplot(data = movies, aes(x = CriticRating, y = AudienceRating, color = Genre)) + 
  geom_point()

#add size

ggplot(data = movies, aes(x = CriticRating, y = AudienceRating, color = Genre, size = BudgetMillions)) + 
  geom_point()

#plotting with layers >>>> plot can be stored in an object, but we will have to be careful if data gets refresh then object will also needs to be refreshed

p<- ggplot(data = movies, aes(x = CriticRating, y = AudienceRating, color = Genre, size = BudgetMillions)) 

#point
p+ geom_point()
  
#lines
p+ geom_line()

#multiple layers

p  + geom_line() + geom_point()

#overriding aesthetics

q<- ggplot(data = movies, aes(x = CriticRating, y = AudienceRating, color = Genre, size = BudgetMillions ))

q+geom_point()

#AES can be overridden
q+geom_point(aes(size = CriticRating)) #overriding the size distribution parameter
q+geom_point(aes(color = BudgetMillions)) #overriding the color distribution parameter

#changing the parameters on the axis
q + geom_point(aes(x =BudgetMillions))

#Renaming axis parameter # Plot 2
q + geom_point(aes(x =BudgetMillions)) + xlab("Budget Millions $") + ggtitle("Audience Rating Vs. Budget", subtitle = "A Graph by ~Nitin Mudgal") + theme(plot.title = element_text(color = "Black", size = 12), plot.subtitle = element_text (color = "Grey", size = 8))

#multiple layer plotting and reducing the size
p  + geom_line(size = 1) + geom_point()



#mapping vs setting

r<- ggplot(data = movies, aes(x = CriticRating, y = AudienceRating)) #created base object

r+ geom_point(aes(color = Genre) ) #mapping, color is being mapped to one of the data parameter
r+geom_point(color = "Blue") #setting, color is being set to a specific color


#Histogram & density charts
s<- ggplot(data = movies, aes(x = BudgetMillions))
s+geom_histogram(binwidth = 10)

#addcolor basis on the genre
s+geom_histogram(binwidth = 10, aes(fill= Genre))

#add a border
s<- ggplot(data = movies, aes(x = BudgetMillions))
s + geom_histogram(binwidth = 10, aes(fill = Genre), colour = "Black")


#Creating a density chart
s+geom_density()
s+geom_density(aes(fill = Genre), position = "Stack")

##Starting layers plot 4
#way1
t <- ggplot(data = movies, aes(x = AudienceRating)) #added aesthetics in base object
t + geom_histogram(binwidth = 10, fill = "Blue", color = "Black") + ggtitle("Rating Distribution for Audience Rating", subtitle = "A Graph by ~Nitin Mudgal") + theme(plot.title = element_text(color = "Black", size = 12), plot.subtitle = element_text (color = "Grey", size = 8))

#way2
t<- ggplot(data =movies)
t+geom_histogram(binwidth = 10, color = "Black", fill = "Grey", aes(x = AudienceRating)) + ylab ("Number of Movies") + ggtitle("Rating Distribution for Audience Rating", subtitle = "A Graph by ~Nitin Mudgal") + theme(plot.title = element_text(color = "Black", size = 12), plot.subtitle = element_text (color = "Grey", size = 8))

#way 2 can be used when not really sure what inside to withdraw from data set,a s this approach is more flexible
#>> 4th Chart

# plot 5t
#Statistical Transformation
u<- ggplot(data = movies, aes(x = CriticRating, y = AudienceRating, color = Genre))
u + geom_point() + geom_smooth(fill = NA) 


#boxplots Chart 6
u<- ggplot(data=movies, aes(x = Genre, y = AudienceRating, color = Genre))

u+geom_boxplot()
u + geom_boxplot(size = 1.2) + geom_point()

u + geom_boxplot(size = 1.2) + geom_jitter()
#way2 for boxplots
u + geom_jitter() + geom_boxplot(size = 1.2)

#plot 6 
u + geom_jitter() + geom_boxplot(size = 1.2, alpha = 0.5) + ggtitle("Genrewise Rating Distribution for Audience Rating", subtitle = "A Graph by ~Nitin Mudgal") + theme(plot.title = element_text(color = "Black", size = 12), plot.subtitle = element_text (color = "Grey", size = 8))


#boxplot for critic rating
library(ggplot2)
u1<- ggplot(data = movies, aes(x= Genre, y = CriticRating, color = Genre))
u1 + geom_jitter() + geom_boxplot(size = 1.2, alpha = .5)


#using Facets
v<- ggplot(data = movies, aes(x = BudgetMillions))
v+ geom_histogram(binwidth=10, aes(fill=Genre), color="Black") + facet_grid(Genre~., scales = "free")


#facets on scatterplots
w<- ggplot(data = movies, aes(x = CriticRating, y = AudienceRating, color = Genre))
w+geom_boxplot(size = 1) + facet_grid(Genre~.)

w<- ggplot(data = movies, aes(x = CriticRating, y = AudienceRating, color = Genre))
w+geom_point(size = 1) +geom_smooth()+ facet_grid(Genre~Year)

w<- ggplot(data = movies, aes(x = CriticRating, y = AudienceRating, color = Genre))
w+geom_point(size = 1) +geom_smooth()+ facet_grid(Genre~Year)

#>> Chart 1
w+geom_point(aes(size = BudgetMillions)) + geom_smooth()+ facet_grid(Genre~Year) + ggtitle("A Graph by ~Nitin Mudgal") + theme(plot.title = element_text(color = "Black", size=8))



##zoom in in the co ordinates to cut out data, limiting x axis and y axis
m<- ggplot(data = movies, aes(x = CriticRating, y = AudienceRating, color = Genre, size = BudgetMillions))

m + geom_point() + xlim(50,100) +ylim(50,100)


#zoomin
n<- ggplot(data = movies,aes(x = BudgetMillions))
n + geom_histogram(binwidth = 10, aes(fill = Genre), color = "Black")
n + geom_histogram(binwidth = 10, aes(fill = Genre), color = "Black") + coord_cartesian(ylim = c(0,50))


w<- ggplot(data = movies, aes(x = CriticRating, y = AudienceRating, color = Genre))
w+geom_point(size = 1) +geom_smooth()+ facet_grid(Genre~Year) + coord_cartesian(ylim= c(0,100)) + ggtitle("Movie Ratings: Audience Vs Critic", subtitle = "A work of ~Nitin Mudgal") + theme(plot.title = element_text(color = "Black", size = 12), plot.subtitle = element_text (color = "Grey", size = 8))


#adding Themes
s<- ggplot(data = movies, aes(x = BudgetMillions))
s + geom_histogram(binwidth = 10, aes(fill = Genre), colour = "Black")

#adding axes labels
s + geom_histogram(binwidth = 10, aes(fill = Genre), colour = "Black") + xlab("Money Axis") + ylab("Number of Movies") +
  theme(axis.title.x = element_text(color = "DarkGreen", size=20),
        axis.title.y = element_text(color = "Red", size=20)) + ggtitle("A Graph by ~Nitin Mudgal") + theme(plot.title = element_text(color = "Black", size=8))


#tick marking formatting
s + geom_histogram(binwidth = 10, aes(fill = Genre), colour = "Black") + xlab("Money Axis") + ylab("Number of Movies") +
  theme(axis.title.x = element_text(color = "DarkGreen", size=20),
        axis.title.y = element_text(color = "Red", size=20),
        axis.text.x = element_text(size =20),
        axis.text.y = element_text(size =20))+ ggtitle("A Graph by ~Nitin Mudgal") + theme(plot.title = element_text(color = "Black", size=8))

#Legend formatting
s + geom_histogram(binwidth = 10, aes(fill = Genre), colour = "Black") + xlab("Money Axis") + ylab("Number of Movies") +
  theme(axis.title.x = element_text(color = "DarkGreen", size=20),
        axis.title.y = element_text(color = "Red", size=20),
        axis.text.x = element_text(size =20),
        axis.text.y = element_text(size =20),
        legend.title = element_text(size = 30),
        legend.text = element_text(size =20),
        legend.position = c(1,1),
        legend.justification = c(1,1)
        )+ ggtitle("A Graph by ~Nitin Mudgal") + theme(plot.title = element_text(color = "Black", size=8))

#title of plot Plot 3
plt<- s + geom_histogram(binwidth = 10, aes(fill = Genre), colour = "Black") + xlab("Money Spent in Mn") + ylab("Number of Movies") +
  theme(axis.title.x = element_text(color = "DarkGreen", size=20),
        axis.title.y = element_text(color = "Red", size=20),
        axis.text.x = element_text(size =20),
        axis.text.y = element_text(size =20),
        legend.title = element_text(size = 30),
        legend.text = element_text(size =20),
        legend.position = c(1,1),
        legend.justification = c(1,1)
  )
plt + ggtitle("Movie Budget Distribution", subtitle = "A Graph by ~Nitin Mudgal") + theme(plot.title = element_text(color = "Black", size = 12), plot.subtitle = element_text (color = "Grey", size = 8))
                                      
