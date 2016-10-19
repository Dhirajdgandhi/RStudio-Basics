student<-c(1:10)
score<-c(85,61,85,67,74,72,70,75,59,66)
population<-data.frame(student,score)
population
u<-mean(population$score)
cat("Mean is ",u)
SD<-sd(population$score)
cat("Standard Deviation is ",SD)

n<-4
mean<-c()
for(i in 1:10){
  sample<-sample(population$score,n,replace=FALSE)
  mean<-c(mean,mean(sample))
  cat("Mean of sample :",sample," is ",mean[i],"\n")
}
mean
par(mar = rep(2, 4))
color=c("red","blue","red","orange","black")
hist(mean,plot=TRUE,main="Histogram of values of mean",border="black",col=color)
lines(density(mean)) #lines to the histogram

aproxmean=mean(mean)
aproxSD=sd(mean)
cat("The approximate mean and std deviation are: ",aproxmean," ",aproxSD)

