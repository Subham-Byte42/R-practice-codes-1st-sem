#here it is a data frame for reference

data<-data.frame(
marks=c(85,90,78,88,92,76,84,95),
age=c(25,24,22,23,24,21,22,25),
hour_study=c(5,6,4,5,7,3,4,6)
)

#generate correlation matrix
cor_matrix<-cor(data)
print(cor_matrix)

#visualize correlation matrix
install.packages("corrplot")
library(corrplot)
corrplot(cor_matrix,method = "circle")
