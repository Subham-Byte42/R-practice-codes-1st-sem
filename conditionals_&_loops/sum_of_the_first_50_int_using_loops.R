#sum of the first fifty integers using the while loop in R.

sum<-0
i<-1
while(i<=50){
sum<-sum+i
i<-i+1
}
print(paste("The sum is:",sum))