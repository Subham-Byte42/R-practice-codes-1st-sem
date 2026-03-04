#basic statistics in R

data<-data.frame(
marks=c(85,90,78,88,92,76,84,95),
age=c(25,24,22,23,24,21,22,25),
hour_study=c(5,6,4,5,7,3,4,6)
)

#calculate mean,meidan,mode,sd
mean_marks<-mean(data$marks)
median_marks<-median(data$marks)
sd_marks<-sd(data$marks)      #standard deviation of marks