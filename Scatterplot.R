library(readr)
insurance <- read_csv("insurance.csv")
x <- insurance$age
y <- insurance$charges
plot(x,y,main = "Age vs Charges",xlab = "Age of an Individual", ylab = "Personal Medical Health Insurance Charges", pch = 19, frame = T, col ="red")
model <- lm(y ~ x, data = insurance)
abline(model,col = "blue")




