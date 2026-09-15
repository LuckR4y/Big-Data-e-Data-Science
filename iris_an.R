#install packages graf
#install.packages("ggvis")

library(ggvis)

iris <- read.csv(url("https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data"), header = FALSE)

head(iris)

#nomes das colunas
names(iris) <- c("sepal.length", "sepal.width", "petal.length", "petal.width", "Species")

head(iris)

str(iris)

iris %>% ggvis(~sepal.length, ~sepal.width, fill = ~Species) %>% layer_points()
iris %>% ggvis(~petal.length, ~petal.width, fill = ~Species) %>% layer_points()
iris %>% ggvis(~petal.length, ~sepal.width, fill = ~Species) %>% layer_points()

cor(iris$sepal.length, iris$petal.width)

x=levels(iris$Species)
x

x[1]
cor(iris[iris$Species==x[1],1:4])

cor(iris[iris$Species=="Iris-setosa",1:4])

# % por class
round(prop.table(table(iris$Species))*100, digits = 1)

summary(iris)
hist(iris$sepal.length)