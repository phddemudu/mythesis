
set.seed(100)
data <- rnorm(100,10,2)
png('hist_equalwidth.png')


hist(data, breaks =10,main = "", xlab = "X~Normal(10,2)")

dev.off()



breakpoints <- c(5,8,10, 11, 12, 14,16)

hist(data, breaks=breakpoints,main = "(b) Unequal Bin Width", xlab = "X~Normal(10,2)")


par( mfrow = c( 1, 2 ) )

