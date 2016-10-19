#Calculate mode

mode <- function(vector,n){
  vector<- sort(vector,decreasing = FALSE)
  vector
  modevalue <- vector[1]
  max=1
  current=1
    
  for(i in 1:(n-1)){
    if (vector[i]==vector[i+1]){
      current<-current+1
      # cat("i=",i)
    }
    else{
      if(current>max){
        modevalue=vector[i]
        max=current
        current=0
      }
    }
    # print(modevalue)
  }
  
  cat("modevalue = ",modevalue)
}


# n<-as.integer(readline(prompt = "Enter number of elements : "))
vector=c(1,2,5,4,4,2,2,4,4,4)
# for (i in 1:n) {
#   vector[i]<-as.integer(readline())
# }
mode(vector,10)
