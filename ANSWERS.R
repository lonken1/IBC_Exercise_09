# Clear Working Directory
rm(list=ls())

# Load in libraries
library(ggplot2)
library(cowplot)
library(reshape2)

# PROBLEM 1
# We found a dataset in a .csv file online that had the height and weight for 5000 males

# Load in file
weightheight <- read.csv("weight-height.csv", header = T)

graph <- ggplot(data=weightheight, aes(x=Height,y=Weight))
graph+geom_point()+theme_classic()+stat_smooth(method = 'lm')


