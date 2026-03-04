#first the reference data frame

data<-data.frame(
marks=c(85,90,78,88,92,76,84,95),
age=c(25,24,22,23,24,21,22,25),
hour_study=c(5,6,4,5,7,3,4,6)
)

#calculate mean,meidan,mode
mean_marks<-mean(data$marks)
median_marks<-median(data$marks)
sd_marks<-sd(data$marks)      #standard deviation of marks

#mode function
get_mode<-function(v){
uniqv<-unique(v)
uniqv[which.max(tabulate(match(v,uniqv)))]
}
mode_marks<-get_mode(data$marks)   #getting the mode
print(paste("Mean:",mean_marks))
print(paste("Median:",median_marks))
print(paste("Mode:",mode_marks))
print(paste("Standard Deviation:",sd_marks))

#frequency distribution table
fre_table<-table(data$marks)
print(paste("Frequency distribution table",fre_table))