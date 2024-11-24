#code for kedall's hypothesis test

kendall_test <- cor.test(insurance$age, insurance$charges, method = "kendall")
print(kendall_test)