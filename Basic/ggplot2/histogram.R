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