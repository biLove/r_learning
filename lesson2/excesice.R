getwd()

setwd('/Users/baoli/Desktop/data-analysis-course/P4/EDA_Course_Materials/lesson2')

reddit <- read.csv('reddit.csv')

#用子集来表示
#stateSubset <- subset(statesInfo,state.region == 1)


#用括号来表示
#stateSubsetBracket <- statesInfo[statesInfo$state.region == 1, ]

table(reddit$employment.status)
summary(reddit)

levels(reddit$age.range)

library(ggplot2)
qplot(data = reddit, x = age.range)
qplot(data = reddit, x = income.range)

# my method
#levels(reddit$age.range) <- list("Under 18" = "Under 18","18-24" = "18-24", 
#                                 "25-34" = "25-34", "35-44" = "35-44","45-54" = "45-54",
#                                 "55-64" = "55-64","65 or Above" ="65 or Above")

# udacity method
reddit$age.range <- ordered(reddit$age.range, levels = c("Under 18", "18-24", "25-34", "35-44", "45-54","55-64","65 or Above"))

# Alternate Solution
#reddit$age.range <- factor(reddit$age.range, 
#                           levels = c("Under 18", "18-24", "25-34", 
#                                       "35-44", "45-54","55-64","65 or Above"),
#                           ordered = T)

levels(reddit$age.range)
library(ggplot2)
qplot(data = reddit, x = age.range)
