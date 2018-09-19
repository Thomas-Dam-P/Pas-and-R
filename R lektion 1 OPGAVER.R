#' # Lektion 1
#' ## PART 1

#' ### Opgave 1
x <- c(rep(1,5))
y <- c(1:5)
z <- y^2
X <- matrix(c(x,y,z),5,3)
X%*%solve((t.default(X)%*%X))%*%t.default(X)

#' ### Opgave 2
v <- c(1,2,3,4,5,1)
u <- c(6,8,10)
u+v # R "starter forfra" med den vektor, der ikke er lang nok.
A = matrix(1:4,2,2)
B=matrix(1:9,3,3)
#' #### A+B kan ikke udregnes, da dimensionerne ikke passer.
#' ### Opgave 3
A <- matrix(c(1,0,-4,-2,2,5,1,-8,9),3,3)
b <- c(0,8,-9)
solve(A,b)

#' ## PART 2
#' ### Opgave 1
head(airquality)
plot(airquality)
plot(airquality$Temp,airquality$Ozone)
plot(airquality$Temp,airquality$Ozone, main = "Ozon vs temperatur", xlab = "Temperature", ylab= "Ozone")
plot(airquality$Temp,airquality$Ozone, xlim=c(70,80), main = "Ozon vs temperatur", xlab = "Temperature", ylab= "Ozone")
plot(airquality$Ozone, type="l")
hist(airquality$Ozone,20)
boxplot(airquality$Ozone)

#' ### Opgave 2
data3=read.table("data3.dat", header=TRUE)
head(data3)
plot(data3)
plot(data3$x,data3$y)
boxplot(data3$x)
hist(data3$z,12)
Sys.setenv(Lang="en")

#' ## PART 3
#' ### Opgave 1
x=seq(-3,3,0.05)
curve(dt(x,3),from = -3, to = 3)
hist(rt(50,3),probability = TRUE)
curve(dnorm,add=TRUE)
hist(rt(500,10),probability = TRUE)
curve(dnorm,add=TRUE)
#' ### Opgave 2
runif(8)
x=-log(1-runif(1000))/2
hist(x)