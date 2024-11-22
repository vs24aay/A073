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

#Editing current Histogram with Normal Curve Overlay

insurance <- read.csv("path/insurance.csv")

y <- insurance$charges

h <- hist(y, 6, main = "Charges Frequency", xlab = "Charges", ylab = "Frequency", col = "Yellow")

x <- seq(0, 60000,1)

mn <- mean(y)

stdDev <- sd(y)

yn <- dnorm(x, mean=mn, sd=stdDev)

box.size <- diff(h$mids[1:2]) * length(y)

yn <- yn * box.size

#To include the normal curve overlay. 

# x axis represents charges and y axis represents frequency.

lines(x, yn, col="blue")

#Output
![image](https://github.com/user-attachments/assets/cff7a0f5-b2f4-4c4a-b6c2-8ecf48f62e94)

#Inference 

#The normal curve overlay does not follow the shape of the underlying data, so for our analysis we  use the non-parametric test for correlation that does not assume normality: Spearman’s Rho or Kendal’s Tau

kendall_test <- cor.test(insurance$age, insurance$charges, method = "kendall")

print(kendall_test)

Ouput for Kendall's test

	Kendall's rank correlation ta

data:  x and y
z = 25.758, p-value < 2.2e-16
alternative hypothesis: true tau is not equal to 0
sample estimates:
      tau 
0.4753024

![image](https://github.com/user-attachments/assets/17a9d45a-3484-45df-9685-68ea010622b6)

