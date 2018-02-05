set.seed(2018)

dat1 <- as.integer(10*runif(12))

mat1 <- matrix(dat1, nrow = 3,ncol = 3, byrow = TRUE)

mat1

#apply((matrix, margin- 1 or 2), function)
#1 is rows first
#2 is cols first
apply(mat1, 2, sum)

myfunc <- function(v){
  return (sum(v)+20)
}

a<- 2:4

myfunc(a)

myfunc(mat1)

apply(mat1, 1, myfunc)

df1 <- as.data.frame(mat1)

c2 <- as.character(mat1[,2])

df2 <- cbind(df1, c2)


myfunc2 <- function(v){
  if (is.numeric(v)){
    return (sum(v)+20)
  }
  else{
    return (NA)
  }
}

x <- c(2, 5, 6, 7, 9, 4)
x1 <- c(x, NA)
mean(x)

mean(x1)

mean(x1, na.rm = TRUE)


#LAB
#question mark brings up the help line
?t.test

set.seed(42)
x <- 1:10
e <- rnorm(10, 0, 1)
y = x + e

t.test(x, y)
t.test(x, y, paired = TRUE)
#paired means first val compated to first, second to second, etc.

cor(x, y)

#modeling

plot(x~y)

model <- lm(y~x)
#lm = linear model
summary(model)
plot(model)

plot(y~x)
abline(model)

#iris dataset
iris
#dont want to call data sets like this because with big sets it will take a very long time

head(iris)
#gives first few entries

iris$Species

iris[5, ]
iris[ ,5]

iris$Sepal.Length
mean(iris$Sepal.Length)


#data cleaning
iris$Sepal.Length[15] <- 999
iris$Sepal.Length
#this value messes up the averages
mean(iris$Sepal.Length)

iris$Sepal.Length[15] <- NA
mean(iris$Sepal.Length)

mean(iris$Sepal.Length, na.rm = TRUE)

q <- NA
is.na(q)

iris <- na.omit(iris)

sum(is.na(iris$Sepal.Length))

iris <- data("iris")
model2 <- lm(Sepal.Length ~ Petal.Length + Species, data = iris)
summary(model2)

model3 <- lm(Sepal.Length ~ Petal.Length * Species, data = iris)
summary(model2)












