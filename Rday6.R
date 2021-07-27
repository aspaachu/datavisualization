#1
age<-c(2,3,5,7,8)
weight<-c(14,20,32,42,44)
cor(age,weight)
r<-lm(weight~age)
plot.new()
abline(lm(weight~age))
plot(age,weight)
k<-predict(r,data.frame(age=6))
k

#2
cus<-c(8,7,6,4,2,1)
dis<-c(15,19,25,24,34,40)
cor(dis,cus)
m<-lm(cus~dis)
m
j<-predict(m,data.frame(dis=2))
j
k<-predict(m,data.frame(cus=5))
k

#3
math<-c(6,4,8,5,3.5)
chem<-c(6.5,4.5,7,5,4)
gr<-lm(chem~math)
plot(math,chem)
abline(gr)
predict(gr,data.frame(math=7.5))
dev.off()

#4
x<-c(186,189,190,192,193,193,198,201,203,205)
y<-c(85,85,86,90,87,91,93,103,100,101)
cor(x,y)
r<-lm(y~x)
plot.new()
plot(x,y)
abline(r)
predict(r,data.frame(x=208))

#5
x<-c(80,79,83,84,78,60,82,85,79,84,80,62)
y<-c(300,302,315,330,300,250, 300,340,315,330,310,240)
cor(x,y)
r<-lm(y~x)
plot.new()
plot(x,y)
abline(r)
class(r)
#strongpositive

#6
slhr<-c(6,7,8,9,10)
tv<-c(4,3,3,2,1)
cor(slhr,tv)
r<-lm(tv~slhr)
r
plot.new()
plot(tv,slhr)
abline(r)
predict(r,data.frame(slhr=8))

#7
x<-c(25 ,42, 33, 54, 29, 36)
y<-c(42 ,72 ,50 ,90 ,45 ,48)
cor(x,y)
r<-lm(y~x)
plot.new()
plot(x,y)
abline(r)
predict(r,data.frame(x=47))



