library(tidytuesdayR)  
library(tidyverse)  
library(usmap)  
library(janitor)  
library(ggeasy) 
library(gganimate)  
library(transformr)  
library(patchwork)  
library(usmap)

install.packages("usmap")
install.packages(tidyverse)  
install.packages(usmap)  
install.packages(janitor) 
install.packages(ggeasy)  
install.packages(gganimate)  
install.packages(transformr)  
install.packages(patchwork)  
install.packages(usmap)
install.packages(PNWColors)

plot_usmap()

glimpse(df)
total_prison_pop <- df %>%
  select(state, year, total_prison_pop) 

unique(total_prison_pop$year)

total_prison_pop1970 <- total_prison_pop %>%
  filter(year == 1970)

total_prison_pop2018 <- total_prison_pop %>%
  filter(year == 2018)

X1 <- plot_usmap(data = total_prison_pop1970, values = "total_prison_pop", labels=FALSE)

X2 <- plot_usmap(data = total_prison_pop2018, values = "total_prison_pop", labels=FALSE)

X1 + X2




pal <- pnw_palette("Bay", n=100, type="continuous")
plot <- plot_usmap(data = total_prison_pop, values = "total_prison_pop", labels=FALSE) +
  scale_fill_gradientn(colours = pal, 
                       name = "Population",
                       limits = c(100000,600000)) +
  easy_move_legend(to = c("right")) +
  theme(panel.background = element_rect(colour = "pal"))
plot

anim <- animate(transition, fps=10)
anim

plot_usmap()

glimpse(df)
total_prison_pop <- df %>%
  select(state, year, total_prison_pop) 

unique(total_prison_pop$year)

total_prison_pop1970 <- total_prison_pop %>%
  filter(year == 1970)

total_prison_pop2018 <- total_prison_pop %>%
  filter(year == 2018)

X1 <- plot_usmap(data = total_prison_pop1970, values = "total_prison_pop", labels=FALSE)

X2 <- plot_usmap(data = total_prison_pop2018, values = "total_prison_pop", labels=FALSE)

X1 + X2




pal <- pnw_palette("Bay", n=100, type="continuous")
plot <- plot_usmap(data = total_prison_pop, values = "total_prison_pop", labels=FALSE) +
  scale_fill_gradientn(colours = pal, 
                       name = "Population",
                       limits = c(100000,600000)) +
  easy_move_legend(to = c("right")) +
  theme(panel.background = element_rect(colour = "pal"))
plot

anim <- animate(transition, fps=10)
anim


