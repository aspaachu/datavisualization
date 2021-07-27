#1Consider the student data in the marks.csv file. Read it into an R variable, Attach
#additional columns in it to keep student wise and subjectwise totals .
x<-read.csv(file.choose())
x
y<-apply(x,1,sum,-c(2))
y
cbind(x,Studenttotal=y)
z<-apply(x,2,sum,-c(2))
z[1]<-NA
rbind(x,Subjecttotal=z)

#2Let list1 <- list(observationA = c(1:5, 7:3),observationB=matrix(1:6,nrow=2))
x<-list(observationA = c(1:5, 7:3),observationB=matrix(1:6,nrow=2))
lapply(x,length)
lapply(x,sum)
lapply(x,class)
f1 <- function(t) { log10(t) + 1 }
lapply(x,f1)
lapply(x,unique)
lapply(x,range)

#3
t<-list(A=matrix(1:9,3),B=1.4,C=matrix(1:10,2),D=21)
lapply(t, mean)
sapply(t,mean)
