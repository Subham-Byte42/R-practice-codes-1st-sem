#data frame
#The basic structure of dataframe.
student_df<-data.frame(
  RollNo=c(101,102,103),
  Name=c("Ashish","swadhin","subham"),
  marks=c(100,200,300),
  stringsAsFactors =TRUE
)
print(student_df)
str(student_df)     #structure 0f data frame