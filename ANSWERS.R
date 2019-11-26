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

# Make ggplot with height and weight
graph <- ggplot(data=weightheight, aes(x=Height,y=Weight))

# Makes the scatter plot
graph+geom_point()+theme_classic()+stat_smooth(method = 'lm')+xlab("Height (in)")+ylab("Weight (lb)")

# PROBLEM 2
#load in file
data <- read.table("data.txt",header=TRUE,sep=",")
#create ggplot for data with regions as the x and observations as the y
b <- ggplot(data=data,aes(x=region,y=observations))
#create bar graph of the means for each region
b+stat_summary(fun.y="mean", geom="bar")

#scatter plot of all observations
#ggplot of data 
c <- ggplot(data=data,aes(x=region,y=observations))
#jitter version of scatterplot
c+geom_jitter()

