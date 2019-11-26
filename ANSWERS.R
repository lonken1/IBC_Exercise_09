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
#other version of scatterplot
c+geom_point(alpha=0.05)

#bar vs. scatterplot
#the bar graph gives the means for each region, while the scatter plot gives the distribution of all the points in each region
#this is important because the means are all relatively equal, but the distributions are not very similar
#for example, the southern region has two clearly separate distributions
#and some distributions are much narrower than others (ex: north region has a narrow distribution)
#adding error bars to the bar graph for means would help depict the spread of the distributions
  # (but would not fix the issue of the south region have two distributions)
