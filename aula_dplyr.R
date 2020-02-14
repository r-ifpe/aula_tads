# isto é um comentário

2 + 2 

# instalar o pacote
install.packages("dplyr")

# ler o pacote
library(dplyr)

glimpse(iris)

select(iris, Petal.Length, Petal.Width)
filter(iris, Petal.Length > 2)
mutate(iris, Petal.Length = Petal.Length + 2)

iris %>%
  filter(Petal.Length > 2) %>% 
  mutate(Petal = Petal.Length + 2) %>% 
  select(Species, Petal) %>% 
  glimpse()

iris %>% 
  transmute(Petal = Petal.Length + 2, Species)

iris %>% 
  group_by(Species) %>% 
  summarise(media = mean(Petal.Length))









