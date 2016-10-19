n<-33
scores<-c(84,93,101,86,82,86,88,94,89,94,93,83,95,86,94,87,91,96,89,79,99,98,81,80,88,100,90,100,81,98,87,95,94)
scores
length(scores)
u<-mean(scores)
u
SD<-6.8
SE<-SD/sqrt(n)

z1<-qnorm(0.975)
z2<-qnorm(0.995)

l1<- u - z1*SE
l2<- u + z1*SE

cat("Confidence interval for 95% :",l1," and ",l2)

l1<- u - z2*SE
l2<- u + z2*SE

cat("Confidence interval for 99% :",l1," and ",l2)