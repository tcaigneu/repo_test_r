library(dplyr)
library(ggplot2)
library(plotly)

data("mtcars")

glimpse(mtcars)

# Commit - 'Load libraries and load data'

mtcars_summary <- mtcars %>%
  group_by(cyl) %>% 
  summarise(mean_displ = mean(disp), 
            mean_hp = mean(hp))

# Commit - 'summarize disp and hp by cyl'

ppoint <- ggplot(mtcars, aes(x = disp, y = hp, colour = cyl)) + 
  geom_point()
ggplotly(ppoint)

# Commit - 'Sometimes a graph is more informative than a table'