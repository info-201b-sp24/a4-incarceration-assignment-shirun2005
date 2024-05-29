library(usmap)
plot_usmap()


library(tidytuesdayR)  
library(tidyverse)  
library(usmap)  
library(janitor)  
library(ggeasy) 
library(gganimate)  
library(transformr)  
library(patchwork)  
library(usmap)



library(readr) 
url <-("https://raw.githubusercontent.com/melaniewalsh/Neat-Datasets/main/us-prison-pop.csv")

rl <- read.csv(url)


total_prison_pop_all <- rl %>%
  group_by(state) %>%
  summarise(total=sum(total_prison_pop, na.rm = TRUE))

# unique(total_prison_pop$year)


p5 <- plot_usmap(data = total_prison_pop_all, values = "total", labels=FALSE,color= "red") +
  scale_fill_continuous(low = "white", high = "red", 
                        name = "Population", 
                        limits = c(100000,600000)) +
  easy_move_legend(to = c("right")) +
  labs(title = "Total Prison Population in different states") +
  theme(panel.background = element_rect(colour = "black"))




