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
