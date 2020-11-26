####### module 5

library(MASS)

U = c(-5, -7, 2)
V = c(4, 3, 6)
t = U %*% V
-41 + 12


x = c(1, 3, 6)
Y = c(2, 4, 6)
X = cbind(1, x)

x
X
beta = solve(t(X) %*% X) %*% t(X) %*% Y
beta
fractions(beta)

fit = lm(Y ~ x)
fit
intercpt = fit$coef[1]
fit$residuals # where the data points fall w/ regards to the line

plot(x, Y)
abline(fit$coefficients)
