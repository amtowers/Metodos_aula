# Lista 1
# ALUNO: ADELMAR DE MIRANDA T�RRES 19/0072334
# 1. ----
# 1a. Atribua valor 22 � etiqueta (objeto) chamada 'pl_MDB_2017'
# representando uma quantidade de pl's encaminhados por
# deputados do MDB em 2017 (dado fict�cio)
pl_MDB_2017 <- 22

# 1b. Qual � a classe do seu objeto 'pl_MDB_2017'?
pl_MDB_2017 <- 22
class(pl_MDB_2017)

# 1c. Informe (como coment�rio) qual o tipo dessa vari�vel
## R: A vari�vel pl_MDB_2017 � do tipo num�rica.


# 1d. Calcule a m�dia da quantidade de pl's do MDB em 2017 e 2018
# sabendo que, em 2018, foram 33
pl_MDB_2017 <- 22
pl_MDB_2018 <- 33
mean(c(pl_MDB_2017,pl_MDB_2018))


# 1e. Informe (como coment�rio) um tipo de gr�fico indicado caso eu queira entender a rela��o entre 
# a quantidade de projetos de lei encaminhados por deputados e seus partidos 
# R: Tendo em vista que a vari�vel partidos � categ�rica, pode-se empregar um gr�fico de barras. Por exemplo, vamos supor que
# existem apenas 5 partidos (DEM, MDB, PT, PP e PSB) e que a quantidade de pls encaminhados por seus deputados foram,
#respectivamente, (28,25,23,18,12). Ent�o, podemos descrever essa rela��o, empregando o seguinte gr�fico de barras:
library(ggplot2)
p_artidos <- c("DEM","MDB","PT","PP","PSB","DEM","MDB","PT","PP","PSB","DEM","MDB","PT","PP","PSB","DEM","MDB","PT","PP","PSB","DEM","MDB","PT","PP","PSB",
"DEM","MDB","PT","PP","PSB","DEM","MDB","PT","PP","PSB","DEM","MDB","PT","PP","PSB","DEM","MDB","PT","PP","PSB","DEM","MDB","PT","PP","PSB",
"DEM","MDB","PT","PP","PSB","DEM","MDB","PT","PP","PSB","DEM","MDB","PT","PP","DEM","MDB","PT","PP","DEM","MDB","PT","PP","DEM","MDB","PT","PP",
"DEM","MDB","PT","PP","DEM","MDB","PT","PP","DEM","MDB","PT","DEM","MDB","PT","DEM","MDB","PT","DEM","MDB","PT","DEM","MDB","PT","DEM","MDB","DEM","MDB",
"DEM","DEM","DEM")
ggplot() +
  geom_bar(mapping = aes(x = p_artidos))

# 2. -----

# Leia o script abaixo e comente com as hashtags o que cada c�digo quer dizer:


# 2a.
senador <- 334
#R: Confere ao objeto senador o valor n�merico 334.

# 2b.
class(senador)
#R: Verifica-se a classe do objeto (vari�vel), constatando-se que � da classe n�merica.

# 2.c
name <- "Flavio"
#R: Confere-se ao objeto (vari�vel) "name" o nome "Fl�vio".

# 2.d
class(senador) != class(name)
#R: Verifica-se se a classe do objeto (vari�vel) senador � diferente da classe do objeto (vari�vel) name. Constata-se que a afirma��o � verdadeira (TRUE)
#

# 3. -----
# 3a. Crie um vetor com o nome dos pa�ses da Am�rica Latina e chame de AL
AL <- c("Argentina", "Bol�via", "Brasil", "Chile", "Col�mbia", "Costa Rica", "Cuba", "Equador", "El Salvador", "Guatemala", "Haiti", "Honduras", "M�xico", "Nicar�gua", "Panam�", "Paraguai", "Peru", "Rep�blica Dominicana", "Uruguai", "Venezuela")
class(AL)
# 3b. Utilizando a fun��o nchar(), que calcula o n�mero de caracteres de um valor nominal, crie um vetor com o n�mero de caracteres de cada pa�s do vetor AL. 
# Qual � o maior valor e o menor valor
nchar(AL)
z <- nchar(AL)
max(z)
min(z)
#Pode-se empregar tamb�m a fun��o range para calcular o valor m�nimo e m�ximo
range(z)
# 3c. Quantos pa�ses possuem mais de 6 caracteres no nome?
z[z>6]
sum(z>6)
# 3d. Crie um novo vetor a partir do vetor AL com pa�ses que n�o est�o inclu�dos dentro do MERCOSUL
MERCOSUL <- c("Argentina", "Brasil", "Paraguai", "Uruguai", "Venezuela")
(out_MERCOSUL <- AL[!(AL%in%MERCOSUL)])
# 3e. Qual � o somat�rio dos nchar() desse novo vetor
nchar(out_MERCOSUL)
sum(nchar(out_MERCOSUL))
# 4. ---- 

# Reescreva a express�o abaixo utilizando o %>% (pipes).
library(magrittr)
round(mean(divide_by(sum(1:10),3)),digits = 1)
1:10%>%
  sum()%>%
  divide_by(3)%>%
  mean()%>%
  round(digits = 1)
# 5. ----

# 5a. Utilizando a fun��o candidate_fed() do pacote electionsBR
# escreva um objeto com os dados de candidates da elei��es nacionais/estaduais
# referentes apenas ao DF no ano de 2018
library(electionsBR)
candidate_DF <- candidate_fed(2018,uf="DF")


