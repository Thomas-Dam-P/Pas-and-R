#' # Lektion 2
#' ## Part 1
#' ### Opgave 1
Prodfct = function(x){
  p=1
  l=length(x)
  for (i in 1:l){
    p=p*x[i]
  }
  return(p)
}
Prodfct(1:5)
prod(1:5)

#' ### Opgave 2
is.wholenumber <- function(x, tol = .Machine$double.eps^0.5)  abs(x - round(x)) < tol
Fibfct = function(n){
  if (is.wholenumber(n)==FALSE){return("Error, input must be a positive integer")} #alternativt if (n!=round(n))
  if (n<1){return("Error, input must be a positive integer")}
  if (n==1) {return(1)}
  if (n==2) {return(1)}
  n1=1
  n2=1
  for (i in 3:n){
    temp=n1
    n1=n2
    n2=temp+n2
  }
  return(n2)
}
Fibfct(54)

#' ### Opgave 3
#install.packages("ggplot2")
#library(ggplot2)
#?ggplot2

#' ## Part 2
#' ### Opgave 1

head(cars)
X=cars[,1]
y=cars[,2]
B=solve((t(X)%*%X),t(X)%*%y)
plot(cars)
abline(0,B)
varians=(t(y-X%*%B)%*%(y-X%*%B))/(50-2)
print(varians)

#' ### Opgave 2
X2=matrix(c(X,X^2),50,2)
B=solve((t(X2)%*%X2),t(X2)%*%y)
plot(cars)
curve(B[1]*x+B[2]*x^2,add=TRUE)
varians=(t(y-X2%*%B)%*%(y-X2%*%B))/(50-2)
print(varians)
#' ### Opgave 3
head(trees)
Girth=trees[,1]
Height=trees[,2]
X=matrix(c(rep(1,31),Girth,Height),31,3)
y=trees[,3]
B=solve((t(X)%*%X),t(X)%*%y)
var=(t(y-X%*%B)%*%(y-X%*%B))/(31-3)
print(B)
print(var)