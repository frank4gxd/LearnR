#learn R first demo
a1 = c(1,5,3,7,2,8,9) # c(x,y,z) defines a 'collection' of numbers
# as a vector

a1       # printing the value of a1, just to double check

mean(a1)    # R has functions such as mean, median and sd
median(a1)
sd(a1)
summary(a1) # the summary function will produce the summary of the variable 

plot(a1)  # plot function produces a simple scatter plot
####### Intro to R - Exercise #############
###########################################

## School Roll data - importing the CSV
Roll<-read.csv(file.choose(), header=TRUE)   #use the SCH_ROLL.csv data

students<-Roll[,2]
teachers<-Roll[,3]
ratio<-Roll[,6]
region<-Roll[,5]

########## summary stats
summary(students)
sd(students)  
summary(teachers)
sd(teachers,na.rm = TRUE)
summary(ratio)
sd(ratio,na.rm = TRUE)
####
quantile(ratio,c(0.05,0.95),na.rm=TRUE)  #quantiles
###
### plots
plot(teachers,students)
hist(ratio)
boxplot(ratio)
boxplot(ratio~region)

##If histogram error"figure margins too large" check: par("mar")
## and correct it with par(mar=c(1,1,1,1))
hist(students)
hist(sqrt(students))

roll=data.frame(students, teachers, ratio, region)
aggregate(roll$ratio,list(roll$region),FUN=mean,na.rm=TRUE)


