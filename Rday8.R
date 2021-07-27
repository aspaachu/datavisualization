#1Create the samples
x<-sample(1:6,3000,replace=TRUE)
x
y<-sample(30:70,27,replace = TRUE)
y
t<-c('H','T')
l<-rep(t,1000)
l

#2)Let x be the normally distributed random variable with mean=0 and
#standard deviation =30 , with n=100
#a) Plot the probability distribution of x assuming that the points are
#normally distributed with mean=0 and standard deviation=30
#b) Plot the cumulative distribution points.
#c) Input the probability 0.2 and obtain the number whose cumulative value
#matches this value (hint: qnorm(0.2, mean=0, sd=30)
#d) Compute the 50% quantile value using qnorm function
x<-rnorm(100,0,30)
x
plot.new()
y<-dnorm(x,0,30)
y
plot(x,y)
z<-pnorm(x,0,30)
plot(x,z)
qnorm(0.2,0,30)
qnorm(0.5,0,30)

#3) In the above example observe and briefly explain what happens to the
#normal distribution curve when you change the mean, the variance, or both
#simultaneously.
#a. change SD to 15
#b. change SD to 45
#c. Change the mean to 50
#d. Change the mean to -50
x<-rnorm(100,0,15)
x
plot.new()
y<-dnorm(x,0,15)
y
plot(x,y)

x<-rnorm(100,0,45)
x
plot.new()
y<-dnorm(x,0,45)
y
plot(x,y)

x<-rnorm(100,50,30)
x
plot.new()
y<-dnorm(x,50,30)
y
plot(x,y)

x<-rnorm(100,-50,30)
x
plot.new()
y<-dnorm(x,-50,30)
y
plot(x,y)

#4) Draw a histogram of 5000 random variables normally distributed with given
#SD= 5 and mean=20 (hint : use rnorm)
x<-rnorm(5000,20,5)
y<-dnorm(x,20,5)
plot.new()
hist(x)

#5) Calculate the probability that a normally distributed random variable with
#mean 22 and variance 25 ,implies SD=5
#a) is greater than 29
#b) is less than 17
#c) is less than 15 or greater than 25
x<-rnorm(100,22,5)
x
y<-dnorm(x,22,5)
y
1-pnorm(29,22,5)
pnorm(17,22,5)
t<-pnorm(15,22,5)
t
j<-1-pnorm(25,22,5)
j
t+j

#6) If the mean length of a sample of rock cod (a fish variety) is 30 inches and
#the variance is 4 inches, calculate the approximate probability that a certain
#rock cod is 31 in. long. Calculate the probability using the equation
x<-rnorm(100,30,2)
x
dnorm(31,30,2)
1/(sqrt(2*pi)*sigma)*exp(-((31 - mu)^2/(2*sigma^2)))
1/(sqrt(2*pi)*2)*exp(-((31 - 30)^2/(2*2^2)))
