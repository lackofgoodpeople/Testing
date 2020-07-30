## Week 1: The R progrgamming Trial Book

x <- c(0.5, 0.6)   
x <- c(TRUE, FALSE) 
x <- c(T, F)
x <- c("a", "b", "c") > x <- 9:29
x <- c(1+0i, 2+4i)

vector("numeric", length=10)
m= matrix(1:6, nrow=2, ncol=3)
m

# Matrix can be created directly from vectors by adding a dimension attribute:
m = 1:10
dim(m) = c(2,5)
m

# Matrices can be created by column-binding or row-binding with cbind() and rbind() function 

x <- 1:3
y <- 10:12
cbind(x, y)

rbind(x, y)

x <- list(1, "a", TRUE, 1+4i)
x


x <- vector("list", length = 5)

x <- factor (c("yes", "yes", "no", "yes","no"))

table(x)
unclass(x)
attr(, "levels")
attr(,"levels")



## Create a vector with NAs in it 
x <- c(1,2,NA,10,3)

## Return a logical vector indicating which elements are NA 
is.na(x)

## Return a logical vector indicating which elements are NaN 
is.nan(x)

x<- data.frame(foo=1:4, bar=c(T,T, F,F))

## Names section 

x <- 1:3
names(x)


names(x)<- c("New York", "Seattle", "Los Angeles")
x

# Lists can alos have names, which is often very useful. 
 x<- list("Los Angeles"=1, Boston=2, London=3)
x 

names(x)


# Matrices can have both column and row names 

m <-matrix(1:4, nrow=2, ncol=2)
dimnames(m) <- list(c("a","b"), c("c","d"))

m


# Column names and rows names can be set separately using the colnames() and rownames() functions 

colnames(m) <- c("h","f")
rownames(m) <- c("x","z")
m

x <- list(2, "a", "b", TRUE)
x

x<- 1:4 
y <- 2

x+y

##Suppose I have a vector x <- c(17, 14, 4, 5, 13, 12, 10) and I want to set all elements of this vector that are greater than 10 to be equal to 4.
x <- c(17, 14, 4, 5, 13, 12, 10)

x[x>10]=4 
x
##########

data=read.csv("hw1_data.csv")
names(data)
data[c(1,2),]
##Alternative 
head(data,2)

#Number of rows 
nrow(data)

#Number of col
ncol(data)

#Last rows 
tail(data,2)

#The entery of the 47th Row
data[47,"Ozone"]


#To figure out how many "NA" are present in the Ozone column 
data=read.csv("hw1_data.csv")
mis=subset(data,is.na(Ozone))
nrow(mis)

# Calculating the mean of the Ozone, excluding the NA rows 
# != indicates logical negation (NOT)
# apply= returns a vector or array or list of values obtained by applying a function to margins of an array or matrix 
# subset= returns subset of vectors, matrices or data frames which meet conditions.
avg=subset(data, !is.na(Ozone), select=Ozone )
apply(avg,2,mean)


#Extract the subset of rows of the data frame where Ozone values are above 31 and 
#Temp values are above 90. What is the mean of Solar.R in this subset?

sub=subset(data, Ozone> 31 & Temp>90, select=Solar.R)
apply(sub,2,mean)


#What is the mean of "Temp" when "Month" is equal to 6?
sub2=subset(data, Month==6, select=Temp)
apply(sub2,2,mean)


#What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?
sub3=subset(data, Month==5 & !is.na(Ozone),select=Ozone)
apply(sub3,2,max)
