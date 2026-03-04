#syntax matrix(data,nrow,ncol,byrow=TRUE / FALSE)
#if TRUE=fill by rows,FALSE=fill by columns

mat<-matrix(1:9,nrow=3,byrow=TRUE)  #: means to(i.e form -to)
print(mat)

#anther example
mat<-matrix(c(1,2,2,2,2),nrow=3,ncol=2,byrow=FALSE)
print(mat)