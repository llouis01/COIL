# goodness of fit
x <- c(13, 9, 7, 4, 13, 7)
p <- c(.13, .13, .2, .16,  .24,  .14)

sum(p)

chisq.test(x, p = p)
# p-value is higher than alpha. fail to reject null. p-value = 0.08471