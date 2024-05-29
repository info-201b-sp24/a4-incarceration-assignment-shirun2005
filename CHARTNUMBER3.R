library(usmap)
plot_usmap()
glimpse(rl)

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

library(readr) 
url <-("https://raw.githubusercontent.com/melaniewalsh/Neat-Datasets/main/us-prison-pop.csv")

rl <- read.csv(url)


total_prison_pop1970 <- rl %>%
  filter(year == 1970) %>%
  select(year, state, total_prison_pop)

total_prison_pop2010 <- rl %>%
  filter(year == 2010) %>%
  select(year, state, total_prison_pop)


total_prison_pop1970 <- total_prison_pop1970 %>%
group_by(state) %>%
  summarise(total=sum(total_prison_pop, na.rm = TRUE))

total_prison_pop2018 <- total_prison_pop2018 %>%
  group_by(state) %>%
  summarise(total=sum(total_prison_pop, na.rm = TRUE))

total_prison_pop2010 <- total_prison_pop2010 %>%
  group_by(state) %>%
  summarise(total=sum(total_prison_pop, na.rm = TRUE))

total_prison_pop_all <- rl %>%
  group_by(state) %>%
  summarise(total=sum(total_prison_pop, na.rm = TRUE))

# unique(total_prison_pop$year)


X1 <- plot_usmap(data = total_prison_pop1970, values = "total_prison_pop", labels=FALSE)

X2 <- plot_usmap(data = total_prison_pop2018, values = "total_prison_pop", labels=FALSE)

X1 + X2



p3 <- plot_usmap(data = total_prison_pop_all, values = "total", labels=FALSE,color= "red") +
  scale_fill_continuous(low = "white", high = "red", 
                        name = "Population", 
                        limits = c(100000,600000)) +
  easy_move_legend(to = c("right")) +
  labs(title = "Total Prison Population in different states") +
  theme(panel.background = element_rect(colour = "black"))


p4 <- plot_usmap(data = total_prison_pop2018, values = "total", labels=FALSE) +
  scale_fill_continuous(low = "white", high = "red", 
                        name = "Population", 
                        limits = c(100000,600000)) +
  easy_move_legend(to = c("right")) +
  labs(title = "Total Prison Population in 2018") +
  theme(panel.background = element_rect(colour = "black"))

plot(p3)
p3 + p4

