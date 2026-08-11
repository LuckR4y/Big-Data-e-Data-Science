#Mostra em que diretorio está
getwd()
#Muda de diretorio
setwd("C:/Users/839832/Desktop/BigData")

#Conteudo do diretorio
dir()


#criação de um vetor
vec <- c(84.334,90.455,34.989,43.222,23,25.424,0.568,0.349,45.984,62.847,17.233,12.085,72.692,4.297, 67.067)

#observar o vetor vec
vec
#verificar modo/tipo do vetor vec
mode(vec)
#verificar tamanho do vetor vec
length(vec)
#verificar estrutura do vetor vec
str(vec)

#verificar calsse do vetor
class(vec)
#observar 6 primeiros elementos do objeto
head(vec)
#Observar 5 ou menos primeiros elementos do objeto
head(vec,4)
#observar 6 ultimos elementos do objeto
tail(vec)
#ordenar o vetor vec criado
sort(vec, decreasing = TRUE)
#ordenar o vetor vec criado
order(vec)
order(vec, decreasing = T)
#Arredondar valores do vec
round(vec)

#observar elementos especificos no vetor
vec[c(1,3,5)]

#selecionar quinto elemento do vetor vec
vec[5]

#media
mean(vec)
#desvio
sd(vec)
#mediana
median(vec)

#sumario estatistico dos dados
summary(vec)
#graficos
hist(vec)
boxplot(vec)
shapiro.test(vec) ## Se há normalidade dos dados brutos


## vetor com uma sequencia de 1 a 1.000.000
x <- 1:1000000 ##calcula o quadrado de cada numero da sequencia em x usando for()
y1 <- numeric(length(x)) #vetor de mesmo comprimento de x que vai receber o resultado
#receber os resultados
for(i in 1:length(x)){
  y1[i] <-x[i]^2
}

##vetor com uma sequencia de cada numero da sequencia em x usando a regra da reciclagem
y2 <- x^2
##confere os resultados
identical(y1,y2)

##tempo de execução usando for()
y1 <-numeric(length(x))
system.time(
  for(i in 1:length(x)){
    y1[i] <- x[i]^2
  }
)
system.time(
  y2 <-x^2
)

# distribuição uniforme
vunif<-runif(300, min=5, max=10) #define the range between 5 and 10
hist(vunif)
shapiro.test(vunif)

#distribuição normal
vnorm <- rnorm(300, mean=10, sd=2) #provide our own mean and standard deviation
hist(vnorm)
shapiro.test(vnorm)
#distribuição poisson
poisson <- rpois(300, lambda=3)
hist(poisson)
shapiro.test(poisson)


