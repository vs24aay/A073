#Codes for visualization

#Since our research question involves corelation, we are using Scatterplot and Histogram for visualization.

#Code for Scatterplot with linear trendline

#=================

x <- insurance$age

y <- insurance$charges

plot(x,y,main = "Age vs Charges",xlab = "Age", ylab = "Charges", pch = 19, frame = T, col ="red")

model <- lm(y ~ x, data = insurance)

abline(model, col = "blue")


#Output
![image](https://github.com/user-attachments/assets/126b0e05-0f8c-4f83-bcd9-1a018869ef05)


#Code for Histogram

insurance <- read.csv("path/insurance.csv")

y <- insurance$charges

h <- hist(y, 6, main = "Charges Frequency", xlab = "Charges", ylab = "Frequency", col = "Yellow")

x <- seq(0, 60000,1)

mn <- mean(y)

stdDev <- sd(y)

yn <- dnorm(x, mean=mn, sd=stdDev)

box.size <- diff(h$mids[1:2]) * length(y)

yn <- yn * box.size



