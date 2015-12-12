rarity = read.csv("cgr_iq_rarity.csv")
name_ref = read.csv("cgr_name_iq.csv")
source_ref = read.csv("cgr_source_iq.csv")

# n <- 10000
# f <- function(x) x^2
# ps <- matrix(runif(2*n), ncol=2)
# g <- function(x,y) y <= x^2
# z <- g(ps[,1], ps[,2])
# plot(ps[!z,1], ps[!z,2], col='blue', pch=20)
# points(ps[z,1], ps[z,2], col='red', pch=20)
# curve(f, 0,1, n=100, col='white', add=TRUE)

X <- c(name_ref$Reported.IQ)
hist(X, col="grey", breaks=seq(130,190,by=1), xlab="Reported IQ", main="")

dist <- rnorm(100000,mean=100,sd=15)

hist(dist,col="grey",seq(0,200,by=3),xlim=c(0,200),xlab = "IQ", main="")

dist130 <- subset(dist, dist >= 130)

hist(dist130, col="grey", seq(130,200,by=3), xlab="IQ", main="")