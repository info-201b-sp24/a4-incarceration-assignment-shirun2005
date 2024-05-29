url <- ("https://raw.githubusercontent.com/melaniewalsh/Neat-Datasets/main/us-prison-pop.csv")
rl <- read.csv(url)

### Trends Over Time Chart
# Load necessary packages
library(ggplot2)
library(reshape2)
library(readr) 

View(rl)
# Assuming your data frame is named rl
# Check the structure of your data frame
str(rl)

# Check the first few rows of your data frame
head(rl)

# Load necessary packages
library(ggplot2)
library(reshape2)

# Assuming your data frame is named rl
# Filter out relevant columns for the chart
prison_pop_trends <- rl[, c("year", "aapi_prison_pop", "black_prison_pop", "latinx_prison_pop", 
                            "native_prison_pop", "other_race_prison_pop", "white_prison_pop")]

# Melt the data for easier plotting
prison_pop_trends <- melt(prison_pop_trends, id.vars = "year", variable.name = "race", value.name = "prison_population")

# Plotting the trends over time
g1 <- ggplot(prison_pop_trends, aes(x = year, y = prison_population, color = race)) +
  geom_line() +
  labs(title = "Trends Over Time: Prison Population by Race",
       x = "Year",
       y = "Prison Population",
       color = "Race") +
  theme_minimal()

plot(g1)


