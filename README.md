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
