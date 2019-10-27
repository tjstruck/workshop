install.packages('ggplot2')

library(ggplot2)

# dataframe
# variables
# visualization

gapminder <- read.csv('gapminder.csv', stringsAsFactors = TRUE)

ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp)) +
  geom_point()

ggplot(data = gapminder, mapping = aes(x = year, y = lifeExp)) +
  geom_point()

# line plot
ggplot(data = gapminder, mapping = aes(x = year, y = lifeExp, 
                                       color = continent, by = country)) +
  geom_line()

# combine visualizations
lifeExpYear <- ggplot(data = gapminder, mapping = aes(x = year, y = lifeExp, 
                                       by = country)) +
  geom_line(mapping = aes(color=continent)) + geom_point()
?geom_line

ggsave(filename = 'lifeexp_v_year.png', plot = lifeExpYear)
?ggsave



ggplot(data = gapminder, mapping = aes(x = year, y = lifeExp, 
                                       by = country)) +
  geom_point() + geom_line(mapping = aes(color=continent))


#Fitting models
ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp)) +
  geom_point() + scale_x_log10() + geom_smooth(method = 'loess')
?geom_smooth

#exercise answer
ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp, 
                                       color=continent)) +
  geom_point(shape=17, size=3) + scale_x_log10() +
  geom_smooth(method = 'lm')

#Recap
# ggplot wants three things:
# 1. A dataframe
# 2. Variables from the dataframe for plotting
# 3. How you want to display the data

ggplot(data =  gapminder, mapping = aes(x = gdpPercap, 
                                        fill = continent)) +
  geom_density() + scale_x_log10() + facet_wrap(~ continent)




















