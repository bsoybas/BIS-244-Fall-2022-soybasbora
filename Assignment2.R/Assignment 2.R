
library(tidyverse)

#Read us-states.csv into R data frame

setwd("~/Downloads")
states <- read.csv("us-states.csv")

View(states)

options(max.print=999999)

state<-"Pennsylvania"




#Filter for Pennsylvania

PENNSYLVANIA <-filter(states,state=="Pennsylvania")

View(PENNSYLVANIA)



#Set n to length of data set

n <-length(PENNSYLVANIA$date)



#Variables

PENNSYLVANIA$incr_cases <- 4

PENNSYLVANIA$incr_deaths <- 3



#Solving for change in cases and deaths

for (i in 2:n)

{PENNSYLVANIA$incr_cases[i] <- (PENNSYLVANIA$cases[i]-PENNSYLVANIA$cases[i-1])}

for (i in 2:n) 

{PENNSYLVANIA$incr_deaths[i] <- (PENNSYLVANIA$deaths[i]-PENNSYLVANIA$deaths[i-1])}




#Finding SD of incr_cases

sd(PENNSYLVANIA$incr_cases)
