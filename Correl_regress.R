#install.packages("yarrr")
#exemplos:

library(yarrr)

x <- c(1,2,4,5,8)
y <- c(16,15,20,19,30)

dados <- data.frame(x,y) #criando um data.frame
dados

is.data.frame(dados) #verificar se dados ? um data.frame

regressao <-lm(y~x,data=dados) #regresso

summary(regressao)

#add a regression line to a scatterplost
plot(x = dados$x,
     y = dados$y,
     xlim = c(0,10), ylim = c(0,30),
     pch = 16,
     col = transparent ("purple", .7),
     main = "Adding a regressioon line to a scatterplot()",
     xlab="x",
     ylab="y"
     )

#add the regression line
abline(lm(y~x,data=dados), lty = 3)

#plot a funcion y=ax+b
# set up colors
col.vec <- piratepal("google")
curve(expr = 2.033 *x+ 11.87, from = -1, to = 10, 
      add = TRUE, lwd = 3, col = col.vec[1])
