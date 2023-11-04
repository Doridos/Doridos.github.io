reddit <- read.csv('eda-course-materials/lesson2/reddit.csv', stringsAsFactors = T)

table(reddit$employment.status)
summary(reddit)
str(reddit)
levels(reddit$age.range)

library(ggplot2)

install.packages("ggplot2")

age.range <- ordered(c("Under 18", "18-24", "25-34", "35-44", "45-54", "55-64", "65 or Above"))

levels(age.range)
age.range <- factor(age.range, levels=c("Under 18", "18-24", "25-34", "35-44", "45-54", "55-64", "65 or Above"))
levels(age.range)                    
qplot(data=reddit, x = age.range )
reddit$age.range <- ordered(reddit$age.range, levels=c("Under 18", "18-24", "25-34", "35-44", "45-54", "55-64", "65 or Above"))
age.range
qplot(data=reddit, x = age.range )



tShirts <- factor(c('medium', 'small', 'large', 'medium', 'large', 'large'), levels = c('medium','small','large')) 
tShirts 
qplot(x = tShirts) 
tShirts <- ordered(tShirts, levels = c('small', 'medium', 'large')) 
tShirts 
qplot(x = tShirts)
