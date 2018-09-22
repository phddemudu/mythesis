# Filled Density Plot

png('density.png')
set.seed(100)
x <- rnorm(100,10,2)
d <- density(x)
plot(d, main="", xlab = "X~N(10,2)")
polygon(d, col="grey", border="blue")
text(10,0.06 , "Area=1")
dev.off()


png('hist_density.png')
h <- hist(x,main = "", xlab = "X~N(10,2)" )
xfit<-seq(min(x),max(x),length=40) 
yfit<-dnorm(xfit,mean=mean(x),sd=sd(x)) 
yfit <- yfit*diff(h$mids[1:2])*length(x) 
lines(xfit, yfit, lwd=2)
dev.off()
