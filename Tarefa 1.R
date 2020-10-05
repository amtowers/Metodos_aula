# Lista 1
# ALUNO: ADELMAR DE MIRANDA TÔRRES 19/0072334
# 1. ----
# 1a. Atribua valor 22 à etiqueta (objeto) chamada 'pl_MDB_2017'
# representando uma quantidade de pl's encaminhados por
# deputados do MDB em 2017 (dado fictício)
pl_MDB_2017 <- 22

# 1b. Qual é a classe do seu objeto 'pl_MDB_2017'?
pl_MDB_2017 <- 22
class(pl_MDB_2017)

# 1c. Informe (como comentário) qual o tipo dessa variável
## R: A variável pl_MDB_2017 é do tipo numérica.


# 1d. Calcule a média da quantidade de pl's do MDB em 2017 e 2018
# sabendo que, em 2018, foram 33
pl_MDB_2017 <- 22
pl_MDB_2018 <- 33
mean(c(pl_MDB_2017,pl_MDB_2018))


# 1e. Informe (como comentário) um tipo de gráfico indicado caso eu queira entender a relação entre 
# a quantidade de projetos de lei encaminhados por deputados e seus partidos 
# R: Tendo em vista que a variável partidos é categórica, pode-se empregar um gráfico de barras. Por exemplo, vamos supor que
# existem apenas 5 partidos (DEM, MDB, PT, PP e PSB) e que a quantidade de pls encaminhados por seus deputados foram,
#respectivamente, (28,25,23,18,12). Então, podemos descrever essa relação, empregando o seguinte gráfico de barras:
library(ggplot2)
p_artidos <- c("DEM","MDB","PT","PP","PSB","DEM","MDB","PT","PP","PSB","DEM","MDB","PT","PP","PSB","DEM","MDB","PT","PP","PSB","DEM","MDB","PT","PP","PSB",
"DEM","MDB","PT","PP","PSB","DEM","MDB","PT","PP","PSB","DEM","MDB","PT","PP","PSB","DEM","MDB","PT","PP","PSB","DEM","MDB","PT","PP","PSB",
"DEM","MDB","PT","PP","PSB","DEM","MDB","PT","PP","PSB","DEM","MDB","PT","PP","DEM","MDB","PT","PP","DEM","MDB","PT","PP","DEM","MDB","PT","PP",
"DEM","MDB","PT","PP","DEM","MDB","PT","PP","DEM","MDB","PT","DEM","MDB","PT","DEM","MDB","PT","DEM","MDB","PT","DEM","MDB","PT","DEM","MDB","DEM","MDB",
"DEM","DEM","DEM")
ggplot() +
  geom_bar(mapping = aes(x = p_artidos))

# 2. -----

# Leia o script abaixo e comente com as hashtags o que cada código quer dizer:


# 2a.
senador <- 334
#R: Confere ao objeto senador o valor númerico 334.

# 2b.
class(senador)
#R: Verifica-se a classe do objeto (variável), constatando-se que é da classe númerica.

# 2.c
name <- "Flavio"
#R: Confere-se ao objeto (variável) "name" o nome "Flávio".

# 2.d
class(senador) != class(name)
#R: Verifica-se se a classe do objeto (variável) senador é diferente da classe do objeto (variável) name. Constata-se que a afirmação é verdadeira (TRUE)
#

# 3. -----
# 3a. Crie um vetor com o nome dos países da América Latina e chame de AL
AL <- c("Argentina", "Bolívia", "Brasil", "Chile", "Colômbia", "Costa Rica", "Cuba", "Equador", "El Salvador", "Guatemala", "Haiti", "Honduras", "México", "Nicarágua", "Panamá", "Paraguai", "Peru", "República Dominicana", "Uruguai", "Venezuela")
class(AL)
# 3b. Utilizando a função nchar(), que calcula o número de caracteres de um valor nominal, crie um vetor com o número de caracteres de cada país do vetor AL. 
# Qual é o maior valor e o menor valor
nchar(AL)
z <- nchar(AL)
max(z)
min(z)
#Pode-se empregar também a função range para calcular o valor mínimo e máximo
range(z)
# 3c. Quantos países possuem mais de 6 caracteres no nome?
z[z>6]
sum(z>6)
# 3d. Crie um novo vetor a partir do vetor AL com países que não estão incluídos dentro do MERCOSUL
MERCOSUL <- c("Argentina", "Brasil", "Paraguai", "Uruguai", "Venezuela")
(out_MERCOSUL <- AL[!(AL%in%MERCOSUL)])
# 3e. Qual é o somatório dos nchar() desse novo vetor
nchar(out_MERCOSUL)
sum(nchar(out_MERCOSUL))
# 4. ---- 

# Reescreva a expressão abaixo utilizando o %>% (pipes).
library(magrittr)
round(mean(divide_by(sum(1:10),3)),digits = 1)
1:10%>%
  sum()%>%
  divide_by(3)%>%
  mean()%>%
  round(digits = 1)
# 5. ----

# 5a. Utilizando a função candidate_fed() do pacote electionsBR
# escreva um objeto com os dados de candidates da eleições nacionais/estaduais
# referentes apenas ao DF no ano de 2018
library(electionsBR)
candidate_DF <- candidate_fed(2018,uf="DF")


