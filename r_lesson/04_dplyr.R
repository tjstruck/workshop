#dplyr
install.packages('dplyr')
library(dplyr)

glimpse(gapminder)

# select
select(gapminder, year)
select(gapminder, year, lifeExp, country)
select(gapminder, -year)


# filter
filter(gapminder, continent == "Asia")
filter(gapminder, continent != "Oceania")
filter(gapminder, year > 2000)

two_countries <- c("Albania", "Dominican Republic")
filter(gapminder, country %in% two_countries)

# piping
min(gapminder[, 'lifeExp'])
gapminder %>% select(lifeExp) %>% min()
#crtl + shift + m == %>%

x1 <- 1:5
x2 <- 2:6
(x1-x2)^2 %>% sum() %>% sqrt()

gapminder %>% 
  select(-pop, -gdpPercap) %>% 
  filter(continent == 'Asia' | continent == "Oceania") %>% 
  head()



# mutate
mean_lifeExp_gapminder
gapminder %>% mutate(NewColumn = lifeExp - mean_lifeExp_gapminder) %>% head()
gapminder <- gapminder %>% mutate(NewColumn = lifeExp - mean_lifeExp_gapminder)
glimpse(gapminder)
select(gapminder, -NewColumn)
gapminder <- gapminder %>% select(-NewColumn)

#Exercise 1:
# Write a single command (which can span multiple lines and includes pipes) 
# that will produce a dataframe that has the African values for lifeExp, 
# country and year, but not for other Continents. 
# How many rows does your dataframe have and why?

gapminder %>%
  filter(continent == "Africa") %>%
  select(year, country, lifeExp) %>% 
  glimpse()

# groupby
gapminder %>% 
  group_by(continent)



# summarize
gapminder %>% 
  group_by(continent) %>% 
  summarize(MeanLife = mean(lifeExp))

gapminder %>% 
  group_by(continent, year) %>% 
  summarize(MeanLife = mean(lifeExp),
            SeLife = sd(lifeExp)/sqrt(n())) %>% 
  ggplot(mapping = aes(x = year, y = MeanLife, color = continent)) +
  geom_line() + 
  geom_errorbar(mapping = aes(ymin = MeanLife - SeLife,
                              ymax = MeanLife + SeLife,
                              width = 0.3))

# standard error:
# sd()/sqrt(n())

gapminder %>% 
  select(country, continent) %>% 
  unique() %>% 
  group_by(continent) %>% 
  summarize(count = n())



gapminder %>% 
  select(country, continent) %>% 
  unique() %>% 
  group_by(continent) %>% 
  summarize( n = n()) %>% 
  mutate(count = sum(n),
            proportion = n/sum(n))

gapminder %>% 
  group_by(country) %>% 
  summarise(MeanLife = mean(lifeExp)) %>% 
  filter(MeanLife == min(MeanLife) | MeanLife == max(MeanLife))


gapminder %>% 
  group_by(country) %>% 
  summarize(mean_le = mean(lifeExp),
            mean_gdp = mean(gdpPercap),
            continent = unique(continent)) %>% 
  filter(mean_le < mean_lifeExp_gapminder) %>% 
  ggplot(aes(x = mean_gdp, y = mean_le, color = continent)) +
  geom_point() + scale_x_log10()





