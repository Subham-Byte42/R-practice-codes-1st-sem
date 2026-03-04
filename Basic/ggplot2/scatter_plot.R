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
