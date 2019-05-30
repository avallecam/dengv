#importar libreria
library(tidyverse)

#ingresar datos originales
y <- read_tsv("data-raw/Dengue990_PI-Numerical.txt",col_names = F)
dim(y)

#pruebas previas
a <- y %>% slice(((991*0)+1):(991*1))
b <- y %>% slice(((991*1)+1):(991*2))
c <- y %>% slice(((991*17)+1):(991*18))
dim(a)
dim(b)
bind_cols(a,b) %>% dim()
bind_cols(a,b) %>% glimpse()
inner_join(a,b,"X1") %>% tail()


#implementar loop
for (i in 1:17) {
  b <- y %>% slice(((991*i)+1):(991*(i+1)))
  a <- inner_join(a,b,"X1")
}

#evaluar
dim(a)
a %>% head()
a %>% tail()

#grabar
write_csv(a,"data/Dengue990_PI-Numerical_4500si.csv",col_names = F)
write_tsv(a,"data/Dengue990_PI-Numerical_4500si.tsv",col_names = F)

#confirmar
x <- read.table("data/Dengue990_PI-Numerical_4500si.tsv",sep = "\t",header = F)
dim(x)