##Pregunta 1
a <- c(3, 4, 76, 2, 5)
b <- c(3, 26, 5, 97, 8)
c <- a+b
c
max(c)
min(c)

##Pregunta 2
comp <- c('c', 'o', 'm', 'p', 'u', 't', 'a', 'c', 'i', 'o', 'n')
alreves <- rev(comp)
alreves

##Pregunta 3
edad <- c(22, 23, 24, 16)
nombre <- c("Ana", "Pedro", "Luisa", "Carlos")
genero <- c("F", "M", "F", "M")
preg3 <- data.frame(edad, nombre, genero)
preg3
    ##Bonus
bonus <- subset(preg3, genero == "F")
bonus

##Pregunta 4
library(datasets)
data(iris)
library('ggplot2')
ggplot(iris, aes(Sepal.Length)) + geom_histogram()
