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
  if (is.wholenumber(n)==FALSE){return("Error, input must be a positive integer")}
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

#' ## Part 2
#' ### Opgave 1
