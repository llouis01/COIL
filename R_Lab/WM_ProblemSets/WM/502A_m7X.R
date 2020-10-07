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