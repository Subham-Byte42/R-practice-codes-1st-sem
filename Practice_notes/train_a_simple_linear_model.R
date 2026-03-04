#train a simple linear model

model<-lm(marks~hours_study,data=data)   #compares
print("Linear Regression Model Summary:")
print(summary(model))

#predict marks for given hours
predicted_marks<-predict(model,data.frame(hours_study=c(4.5,6.5)))
print(paste("Predicted marks:",predicted_marks))

#add predictions to data set
data$predicted<-predi
ct(model,data)
print(data)

#visualize the regression line
# install.packages("ggplot2")
# library(ggplot2)
# ggplot(data,aes(x=hours_study,y=marks))+
#   geom_point(color="blue",size=2)+
#   geom_line(aes(y=predicted),color="red",size=1)+
#   labs(title="Linear Regression",x="hours_study",y="marks")+
#   theme_minimal()

#train text solit model
set.seed(123)
sample_index<-sample(1:nrow(data),0.7*nrow(data))
train_data<-data[sample_index,]
test_data<-data[-sample_index,]
model_train<-lm(marks~hours_study,data=train_data)
predictions_test<-predict(model_train,test_data)
print("Test data predictions:")
print(data.frame(Actual=test_data$marks,predicted=predictions_test))