install.packages("tidyverse")
install.packages("palmerpenguins")
library("ggplot2")
library("palmerpenguins")

# Let's show relationship between body mass and flipper length between 3 species

ggplot(data=penguins)+
  #geom_smooth(mapping=aes(x=flipper_length_mm, y=body_mass_g)) +
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, color=species, 
                         shape=species))+
  facet_grid(~species)
