data<-data.frame(
  Name=c("a","b","c","c"),
  age=c(1,NA,2,3),
  marks=c(50,60,NA,66),
  stringsAsFactors = FALSE
)

print(data)  #original data

#checking for missing values
print(is.na(data))

#replace the missing value

    # data$age[is.na(data$age)]<-mean(data$age,na.rm=TRUE)
    # data$marks[is.na(data$mark)]<-mean(data$marks,na.rm=TRUE)
    # print(data)
    # data$marks[3]<-NA

data$marks[is.na(data$marks)]<-median(data$marks,na.rm=TRUE)
data$age[is.na(data$age)]<-median(data$age,na.rm=TRUE)
print(data)

duplicate<-data[!duplicated(data),]
print(duplicate)  