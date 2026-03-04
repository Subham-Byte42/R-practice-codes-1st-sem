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

#It shows how to select a specific colomn.

print(csv_df[c("Name","marks")]) #selecting specific coloumn

#select specific row
print(csv_df[c(1,2),]) #give a comma after selecting