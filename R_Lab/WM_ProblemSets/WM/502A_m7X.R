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

x = numeric(61) # list must have length(mod) because generator is full period
x[1] = 3 # set as seed
for (i in 2:61) x[i] = (7 * x[i - 1]) %% 61
print(x)
# notice how the list went back to the seed