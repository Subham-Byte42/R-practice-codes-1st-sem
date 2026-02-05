#introduction to R
print("HELLO DATA SCIENCE")
a<-12
b<-13
print(a+b)   #for printing results
sum<-a*b
print(paste("The multiplicaton is:",sum)) #for modify print printand paste
#str of vector: vec<-c( , , ,)  here c is constant
marks<-c(12,14,15)
print(marks)
vec<-c("a","b",25,"subham",1L)
print(vec)
#syntax matrix(data,nrow,ncol,byrow=TRUE / FALSE)
#if TRUE=fill by rows,FALSE=fill by columns
mat<-matrix(1:9,nrow=3,byrow=TRUE)  #: means to(i.e form -to)
print(mat)
mat<-matrix(c(1,2,2,2,2),nrow=3,ncol=2,byrow=FALSE)
print(mat)
#listing of items
lst<-list(Name="Mukesh",Age=34,class=12)
print(lst)
PARUL<-list(Name="Subham",Div="aids-4",roll=5)
print(PARUL)
#data frame
student_df<-data.frame(
  RollNo=c(101,102,103),
  Name=c("Ashish","swadhin","subham"),
  marks=c(100,200,300),
  stringsAsFactors =TRUE
)
print(student_df)
str(student_df)     #structure 0f data frame
#csv file in R stores the data of a dataframe row wisr
avx<-write.csv(student_df,"student_df.csv") #before print a csv we hvae to write the csv file
csv_df<-read.csv("student_df.csv")
print(csv_df)
print("Selecting specific colummns:")
print(csv_df[c("Name","marks")]) #selecting specific coloumn
#select specific row
print(csv_df[c(1,2),]) #give a comma after selecting
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

#ggplot start
#bar plot
install.packages("ggplot2")
library(ggplot2) 
student_df<-data.frame(
  Name=c("Subham","Aman","Ashish","Swadhin"),
  marks=c(50,60,70,80)
)
ggplot(student_df,aes(x=Name,y=marks,fill=Name))+
  geom_bar(stat="identity")+
  labs(title="Bar chart of Marks",x="Name",y="Marks")

#scatter plot
install.packages("ggplot2")
library(ggplot2)
student_df<-data.frame(
  Name=c("Subham","Aman","Ashish","Swadhin"),
  marks=c(50,60,70,80)
)
ggplot(student_df,aes(x=Name,y=marks,colour = Name))+
  geom_point(size=3)+
  labs(title = "Scatter plot",x="student",y="Mark")

#line graph
install.packages("ggplot2")
library(ggplot2)
student_df<-data.frame(
  Name=c("Subham","Aman","Ashish","Swadhin"),
  marks=c(50,60,70,80)
)
ggplot(student_df,aes(x=Name,y=marks,group=1))+
geom_line(color="red")+
  geom_point(size=2)+
  labs(title="line graph presentation",x="student",y="Mark")

#histogram
install.packages("ggplot2")
library(ggplot2)
student_df<-data.frame(
  Name=c("Subham","Aman","Ashish","Swadhin"),
  marks=c(50,60,70,80)
)
ggplot(student_df,aes(x=marks))+
  geom_histogram(binwidth = 5,fill="skyblue",color="black")+
  labs(title="Histogram",x="marks",y="frequency")


