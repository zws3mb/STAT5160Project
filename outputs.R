plot.default(wifiAldmeans$day,wifiAldmeans$x,col="blue", type="l",ylim=c(0,30),axes="FALSE",ylab="Wifi Speed(Log(Mb/s))",xlab="Day of the Week",main="Mean Wifi Speed vs Day of the Week")
lines(wifiClemmeans$day,wifiClemmeans$x,col="red", type="l")
lines(wifiClarkmeans$day,wifiClarkmeans$x,col="green", type="l")
axis(1,1:5,c("Mon","Tues","Wed","Thurs","Fri"))
axis(2)
legend(1,31,legend=c("Alderman","Clark","Clemons"),lty=c(1,1),col=c("blue","green","red"))

libraryvar<-aggregate(wifidat$y,list(day=wifidat$library),var)

plot(timeser[timeser$library=="Clemons","y"],type="l",ylim=c(0,30),axes=FALSE, ylab="Wifi Speed",xlab="Day",main="Wifi speed per library over time")
lines(timeser[timeser$library=="Alderman","y"],type="l",col="red")
lines(timeser[timeser$library=="Clark","y"],type="l",col="green")
axis(2)
axis(1,1:10,c("Mon","Tues","Wed","Thurs","Fri","Mon","Tues","Wed","Thurs","Fri"))
legend("topleft", c("Alderman","Clark","Clemons"), cex=0.6, 
bty="n", fill=c("red","green","black"))

barplot(as.matrix(byDay),beside=TRUE,col=rainbow(5),ylab="Wifi speed (Log(Mb/s))",main="Average Wifi speed per Library")
legend("topleft", c("Mon","Tue","Wed","Thu","Fri"), cex=0.6, bty="n", fill=rainbow(5))