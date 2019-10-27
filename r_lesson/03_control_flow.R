#Loop

for(my_var in 1:10){
  print(my_var)
}
  
1:10

paste0("I am a ", 5)

for(i in 1:3){
  for(j in letters[1:3]){
    print(paste(i, j))
  }
}

c <- c()
c
for(i in 1:5){
  c <- c(c, i^2)
  print(c)
}


"X continent has a life expectency between ___ and ___"
for(cont in unique(gapminder$continent)){
  min_life <- min(gapminder[gapminder$continent == cont, 'lifeExp'])
  max_life <- max(gapminder[gapminder$continent == cont, 'lifeExp'])
  print(paste(cont, " has a life expectancy between ", min_life, "and", max_life))
}

# Etherpad  answer:
for(cont in unique(gapminder$continent)){
  mean_life <- mean(gapminder[gapminder$continent == cont, 'lifeExp'])
  print(paste(cont, " has a mean life expectancy of ", mean_life))
}


# Conditionals
x <- -5
if (x > 0){
  print("positive number")
}

# if else
x <- 0
if (x > 0){
  print("positive number")
} else{
  print("negative number")
}


x <- 0
if (x > 0){
  print("positive number")
} else if(x <= 0){
  print("negative number")
}

# nesting conditional statements
x <- 3
if (x> 0){
  print('positive number')
  if (x == 3){
    print('three!')
  }
} else if(x < 0){
  print("negative number")
}

#loop and conditional
for (i in c(-1, 3, 0, -7)){
  if (i>0){
    print('positive number')
  } else if (i < 0){
    print('negative number')
  } else {
    print('zero')
  }
}


#gapminder with loops and conditional statements
mean_lifeExp_gapminder <- mean(gapminder$lifeExp)
summary(gapminder)

#Find which continents have a mean lifeExp above 59.47
for(cont in unique(gapminder$continent)){
  if(mean(gapminder[gapminder$continent == cont, 'lifeExp']) > 
     mean_lifeExp_gapminder){
    print(paste(cont, "has a life expectancy above average for the world"))
  }
}

summary(gapminder[gapminder$year == 2007,]$gdpPercap)

first <- 1625.4
mid <- 6124.4
third <- 18008.8

for (country in unique(gapminder$country)){
  country_gdp <- gapminder[gapminder$country == country & gapminder$year == 2007, 
                         'gdpPercap']
  if(country_gdp <= first){
    print(paste(country, "has a gdp at or below the first quartile"))
  } else if (country_gdp == mid){
    print(paste(country, "has a gdp at the median"))
  } else if (country_gdp >= third){
    print(paste(country, "has a gdp at or above the third quartile"))
  }
}











