num<-c(5,10,15,20)   #create a numeric vector
print(num)
fruit<-c("apple","mango","lichi","papya")
print(fruit)
x<-c(2,7,7.72)
x[3]        #to select from vector:vector{positin}
a<-c(1,2,3)
b<-c(4,5,6)
print(paste("Sum:",a+b))
log<-c(TRUE,FALSE,TRUE,TRUE,FALSE)
print(log)
sum<-c(1,2,3,4,5,6,7,8,9)
sum(sum)
rev(sum)
mat<-matrix(1:6,nrow=3,ncol=3,byrow=TRUE)
print(mat)
mat1<-matrix(1:9,nrow=3,ncol=3,byrow = FALSE)
print(mat1)
mat[2,3]
print(mat+mat1)
mat1<-matrix(1:9,nrow=3,ncol=3,byrow = FALSE)
print(mat1)
print(3*mat1)
mat1<-matrix(1:9,nrow=3,ncol=3,byrow = FALSE)
print(mat1)
t(mat1)    #t() used for transpose
#lists
subham<-list(Name="Subham",age=18,mark<-c(50,12,53))
print(subham)
subham[3]
vecmat<-list(vec<-c(5,2,3,6,9),mat<-matrix(1:6,nrow=3,ncol=2,byrow=TRUE))
print(vecmat)
vecmat[2]        #select the value of a list
vecmat[1]<-20     #change the value of a list
print(vecmat)
list1<-list(Name="Rajesh",list2<-list("Allo","vindi","carrot"))
print(list1)          #nested list
list1<-c(list1,"Subham")    #add a  new item to a list
print(list1)
#Questions based on data frames
student_df<-data.frame(
  RollNo=c(1,2,3,4,5),
  Name=c("a","b","c","d","e"),
  Marks=c(10,20,30,40,50),
  stringsAsFactors = FALSE
)
print(student_df)
# print(student_df[c(3),])  #print the third row
# print(student_df[c("Name")])   #print the name column
# print(student_df[2,"Marks"]) #prints the marks of the second student
student_df$Grade<-ifelse(student_df$Marks>=90,"A",ifelse(student_df$marks>=10,"B","C"))
print(student_df)      #add a specific column
new_row<-data.frame(
  RollNo=103,
  Name="Subham",
  Marks=12
)
# student_df<-rbind(student_df,new_row)  #add a new data to the existing data frame
# print(student_df)
student_df$Grade<-NULL    #remove a column from dataframe
print(student_df)
#new
student_df<-data.frame(
  RollNo=c(1,2,3,4,5),
  Name=c("a","b","c","d","e"),
  Marks=c(100,80,70,90,50),
  stringsAsFactors = FALSE
)
filte<-subset(student_df,Marks>80)   #first way to filter data
print(filte)
print(student_df[student_df$Marks>80,])
student_df$Marks[student_df$RollNo==1]<-95     #updating marks
print(student_df)
names(student_df)[names(student_df)=="Marks"]<-"scores"   #updating column names
print(student_df)    #here name is constant

summary(student_df)
sort_df<-student_df[order(-student_df$Marks),]
print(sort_df)











