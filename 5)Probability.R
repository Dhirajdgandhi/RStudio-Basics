n<-12
ans<-5
probab<-1/5
p=0
for(i in 0:4){
  p<-p + dbinom(i, size=n, prob=probab)
}

cat("The probability of 4 or less correct answers is: ",p," i.e ",p*100,"%")

cat("By cumulative distribution function : ",pbinom(4, size=n, prob=probab) )