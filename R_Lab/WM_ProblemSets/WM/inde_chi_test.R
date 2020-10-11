x <- matrix(c(24, 289, 9, 100, 13, 565), nrow = 2)
View(x)

chisq.test(x)
# p-value = 0.000174 ; reject null; flu and vaccine are not independent