precip
mean(precip)
sd(precip)
summary(precip)
ll = mean(precip) - (sd(precip))
ul = mean(precip) + (sd(precip))
boxplot(precip)
print(paste("Confidence Interval for rainfall in the US is: (", round(ll, 2), ", ", round(ul, 2), ")."))

qnorm(.90, 34.89, 13.71)


###############################################################
# xbar +- critv * se
hist(precip)
n = length(precip)
xbar = mean(precip)
critv = qt(1 - 0.1/2, n - 1)
sdev = sd(precip)
se = sdev/sqrt(n)
half = critv * se
xbar + c(-1, 1) * half

# or conduct a t.test(precip)

t.test(precip)
t.test(precip, conf.level = .90)$conf.int
t.test(precip, conf.level = .90)$p.value
