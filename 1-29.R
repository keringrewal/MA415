data("mtcars")
head(mtcars)
str(mtcars)


write.csv(mtcars, "mt-spread.csv")

mt <- read.csv("mt-spread.csv")

mt <- read.csv("mt-spread.csv")

is.data.frame(mt)
is.list(mt)

mt$cyl

mt[3, 1]

