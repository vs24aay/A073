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

#Test of correlation.

Spearman's rank correlation coefficient is appropriate for assessing correlation as our data set consist of non-parametric data. 
Spearman's Rho is simpler to calculate and requires fewer resources in the majority of statistical software programs.

#Code and Output of computing Spearman's correlation to assess correlation.

spearman_test <- cor.test(insurance$age, insurance$charges, method = "spearman") 

Warning message:

In cor.test.default(insurance$age, insurance$charges, method = "spearman") :

  Cannot compute exact p-value with ties
  
  print(spearman_test)

	Spearman's rank correlation rho

data:  insurance$age and insurance$charges

S = 185881923, p-value < 2.2e-16

alternative hypothesis: true rho is not equal to 0

sample estimates:

      rho 
      
0.5343921 

#Inference
The test gives a result of roughly 0.534. This implies that in our sample, there is a moderately positive correlation between age and personal insurance charges. 

A strong positive correlation would be indicated by a rho value closer to 1, whereas a strong  negative correlation would be indicated by a rho number closer to 

-1 . 

Also, "< 2.2e-16" is the reported p-value, which is  negligible. It shows  null hypothesis (that there is no correlation between age and charges) can be 

rejected confidently . In other words, there is a statistically significant correlation between insurance charges and age(Alternative hypothesis).


Additionally, Tie warning: This occurs as a result of the cor.test function using the data rank to calculate the Spearman correlation. It may be difficult to 

determine the precise p-value if there are identical values (ties). In such situations, R will make use of an approximation. The p-value may not be precise, but 

the correlation coefficient (rho) remains unaffected.

![rstudio](https://github.com/user-attachments/assets/b0eaa479-a355-445f-b20f-a0f879435f8c)



