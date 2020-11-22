#### module 4
library(MASS)
library(boot)
install.packages(matlib)

# A = matrix(c(200, 600, 400,	300, 600,	300), 2, 2, byrow= T)
# rhs = c(600, 900, 1300)
# solve(A, rhs)


A = matrix(c(-3, 3, 2, 7), 2, 2, byrow = T)
det(A)
fractions(fractions(inv(A)) %*% c(-2, 6))
