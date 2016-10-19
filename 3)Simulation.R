mean<-c()
size<-c(1,30,1000)

for(j in size){
  for(i in 1:1000){
    sample<-sample(100:200,j,replace=TRUE)
    mean<-c(mean,mean(sample))
  }
  
  u<-mean(mean)
  cat("\n For ",j," observations :- Mean :",u)
  SD<-sd(mean)
  cat("    SD :",SD)
  hist(mean,plot=TRUE,main="Histogram of values of mean",border="black",col=color)
  lines(density(mean)) #lines to the histogram
}