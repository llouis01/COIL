rivers
hist(rivers)
plot.ecdf(rivers, verticals = T, pch = "")
mle = 1/mean(rivers)
x = seq(0, max(rivers), length.out = 300)
y <- pexp(x, mle)
lines(x, y)

ks.test(rivers, "pexp", mle) # basic goodness of fit