read data from file
w1234 <- read.csv(file="/Users/junyi/Downloads/biXDCR_toy_SSD/l1234.txt",sep=",",head=FALSE)

histogram plot
hist(w1234$V1,breaks=32, xlab='bounced-back latency in milliseconds', main='optimistic XDCCR latency analysis')


quantile plot
p = seq(0, 1, 0.01)
qqplot(p, w1234$V1)
