#1
#1.a
dbinom(5,50,0.8)
#1.b
dbinom(5,50,0.05)
#1.c
pbinom(5,50,0.8)
#1.d
1-pbinom(25,50,0.8)
#1.e
pbinom(5,50,0.05)

#2
#2.a
dbinom(40,60,0.65)
#2.b
1-pbinom(40,60,.065)

#3
x<-seq(0,30,1)
y1<-dbinom(x,30,0.15)
y2<-dbinom(x,30,0.4)
y3<-dbinom(x,30,.8)
plot.new()
plot(x,y1)
plot(x,y2)
plot(x,y3)

#4
#4.a
dbinom(20,60,0.5)+dbinom(25,60,0.5)+dbinom(30,60,0.5)
#4.b
pbinom(20,60,0.5)-dbinom(20,60,0.5)
#4.c
pbinom(30,60,0.5)-pbinom(20,60,0.5)

#5
x<-rpois(100,5)
y<-rpois(100,50)
z<-rpois(100,120)
hist(x)
hist(y)
hist(z)

#6
x<-rpois(2608,10097/2608)
hist(x)

#7
#7.a
ppois(5,7)-dpois(5,7)
#7.b
1-ppois(10,7)
#7.c
ppois(16,7)-ppois(4,7)

#8
?runif
punif(6,1,25)
