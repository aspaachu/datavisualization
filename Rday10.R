install.packages("RMySQL")
library(RMySQL)
library(dbConnect)
?dbConnect
#2
x<-dbConnect(MySQL(),dbname='sw800',user='sw800',password='nielit',host='localhost')
y<-dbSendQuery(x,"select * from ai30country")
z<-fetch(y)
z
dbSendQuery(x,"update ai30country set country_name='UnitedKingdom' where country_id=2")
t<-dbSendQuery(x,"select * from ai30country where language='English'")
k<-fetch(t)
k
dbSendQuery(x,"insert into ai30country values(5,'Canad','Dollar','English')")
dbSendQuery(x,"delete from ai30country where country_id=2")
dbClearResult(x)
#3

j<-dbWriteTable(x,'ai30mtcars',mtcars)
mtcars
merc<-dbSendQuery(x,"select * from ai30mtcars where row_names like 'Merc%'")
m<-fetch(merc)
m
cyl<-dbSendQuery(x,"select * from ai30mtcars where cyl=8")
hp<-dbSendQuery(x,"select * from ai30mtcars where hp>100")
veh<-dbSendQuery(x,"select count(*) from ai30mtcars group by cyl ")
fetch(cyl)
disp<-dbSendQuery(x,"select * from ai30mtcars where disp between 100 and 200")
fetch(disp)
k<-dbReadTable(x,'ai30country')
k$country_name