#Math
3+2
3/2
2 * (4 + 2)
(4 
  + 2)

#Data types
#Number type
#numeric
3
2.4
4.666

class(3)

#Integer
3L
class(3L)
as.integer(3)
class(as.integer(3))

as.integer()

#Complex
class(3 + 1i)


#Word types
#String
'dog'
'plant'
class('dog')

#Character:
'd'

#String:
'dog'

#Characters make up strings

#Logical
TRUE
FALSE

300 > 200
3 == 3L
class(3) == class(3L)

FALSE == FALSE
10-5==sqrt(25)
TRUE > FALSE
'a' > 'b'


#Variables
my_var = 'Tucson'
dog <- 3
3 -> dog

#Naming variables
.day <- 1 #Hidden variable

#Complex variable name
#Dot seperated
prob1.lm
#Underscore seperated
prob1_lm
#CamelCase
prob1Lm

x <- 3 ;y <- 2 ;y <- 17.4 ;x+y

#Data structures
#Vector
1:10
num_vector <- 1:10
logical_vector <- c(TRUE, FALSE, TRUE)
char_vector <- c('Matt', 'Asher', 'Sarah')

class(num_vector)
class(logical_vector)
class(char_vector)

mixed <- c(TRUE, 'a')
class(mixed)

#List
#"Vector" that can hold multiple data types
my_list <- list(1, 'A', TRUE)

#Matrix
#Vector with multiple dimentions
?matrix
m <- matrix(nrow=2, ncol=3)
m
m <- matrix(1:6, nrow=2, ncol=3)
m
m <- matrix(1:6, nrow=2, ncol=3, byrow = TRUE)
m

#DataFrame
df <- data.frame(id = letters[1:10], x=1:10, y=11:20)
df
class(df)
class(m)

ncol(df)
nrow(df)
dim(df)
str(df)
summary(df)

fact <- c(rep(1,4), rep(2,3),rep(3,5))
factor(fact)

cats <- data.frame(coat=c('calico','black','tabby'),
                   weight = c(2.1,5.0,3.2),
                   likes_string = c(1,0,1))
cats
getwd()
write.csv(x=cats, file = 'cats_data.csv', row.names=FALSE)

cats2 <- read.csv('cats_data.csv')
cats2
cats==cats2
?read.csv

cats$coat
cats$weight + 2

age <- c(3,4,5)
cats <- cbind(cats, age)
rbind()


#Load gapminder data
gapminder <- read.csv(file = 'gapminder.csv')
str(gapminder)

head(gapminder)
tail(gapminder)
nrow(gapminder)
ncol(gapminder)
dim(gapminder)
summary(gapminder)
colnames(gapminder)

str(gapminder)
summary(gapminder)
colnames(gapminder)
dim(gapminder)

#Subset: 
# dataframe$variable
min(gapminder$year)
mean(gapminder$lifeExp)
max(gapminder$pop)

# dataframe[x,y]
gapminder[1,1]
gapminder[1:5,6]
colnames(gapminder)
gapminder[20:22,3:6]
gapminder[-3:-1704,]
gap2 <- gapminder[-3:-1704,-3:-4]

head(gapminder[, 'lifeExp'])
head(gapminder[, c('lifeExp','pop')])

head(gapminder[gapminder$year == 1997,])
gapminder[gapminder$country == 'Gabon' & gapminder$year == 1997,]


