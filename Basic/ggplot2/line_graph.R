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
