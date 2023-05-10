#!/usr/bin/Rscript
#
# R script to create and save a scatter plot
# Diana Dai, 23 Spring

# Read the datafile
mydata <- read.table("dataout", header=FALSE, sep=" ")

sum <- sum(mydata$V2)
mean <- mean(mydata$V2)
  
print (sum)
print (mean)

# Open a jpeg device, create the plot there, close device
jpeg('scatterplot_out.jpg')
plot(mydata$V1, mydata$V2, main="C File Sizes", xlab="File", ylab="Size")
dev.off()
