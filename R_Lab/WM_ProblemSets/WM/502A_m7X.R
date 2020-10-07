###### Module 7 #######

library(xlsx)

casi <- read.xlsx("C:\\Users\\Loube\\OneDrive - William & Mary\\Bus_Stats_BUAD502A\\Assignments\\buad502a-m7-novice-dataset3-casino.xls", 1)

casi <- casi[, -4]


# scatterplot
plot(casi$Casino.Revenue.in..1.000.000.s~casi$Number.of.free..5.poker.chips.given.away., col = 'red')
abline(casi_lm, cex = 1.3)


casi_lm <- lm(casi$Casino.Revenue.in..1.000.000.s~casi$Number.of.free..5.poker.chips.given.away.)

casi_lm <- lm(casi$Casino.Revenue.in..1.000.000.s~casi$Number.of.free..5.poker.chips.given.away.)

coef(casi_lm) # obtain coefficient


#### Simulation Chapter 25
# prime modulus multiplicative linear congruential generator

# with a, m and x0

x = numeric(14) # list must have length(mod) because generator is full period
x[1] = 3 # set as seed
for (i in 2:14) x[i] = (7 * x[i - 1]) %% 61
print(x)
# notice how the list went back to the seed

plot(x/61)
plot(runif(14))


par(mfrow = c(2,1))
x = numeric(60) # list must have length(mod) because generator is full period
x[1] = 3 # set as seed
for (i in 2:60) x[i] = (7 * x[i - 1]) %% 61
u = x/61
plot(0, 0, type = 'n', xlim = c(0,1), ylim = c(0,1))
for (i in 2:60) points(u[i - 1], u[i], pch = 10)
points(u[60], u[1], pch = 10) # plot for pairs of random numbers


u = runif(60)
plot(0, 0, type = 'n', xlim = c(0,1), ylim = c(0.1))
for (i in 2:60) points(u[i - 1], u[i], pch = 10)
points(u[60], u[1], pch = 10)
par(mfrow = c(1,1))


