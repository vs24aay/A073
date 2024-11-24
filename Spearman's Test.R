library(readr)
insurance <- read_csv("insurance.csv")
spearman_test <- cor.test(insurance$age, insurance$charges, method = "spearman")
print(spearman_test)