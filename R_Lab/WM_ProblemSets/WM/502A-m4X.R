### September 20th, Loubens Louis



# 1 what's the score to allow only best 35% to pass?
# 1 Real Estate exam score

qnorm(.65, 435, 72) # using qnorm with 65% as the bounding # value
# 462.7431

# draw the curve
x = seq(0, 750, length = 1000)
y <- dnorm(x, mean = 435, sd = 72)
plot(x, y,
     type = 'p',
     lwd = 1,
     col = 'red',
     main = "Standard Normal Distribution with Mean 435 and SD 72",
     xlab = "Score",
     ylab = "Frequency"
     )
abline(v = 435 + seq(-3,3)*72, col = "black",lty = 2)
text(435 + seq(-3,3)*72,max(y)/2,c(paste0(-(3:1),"sd"),"mean",paste0(1:3,"sd")))


# using pnorm() with uppr and lwr bound, mean and sd,
# we can find the percentile of the scores
mu = 435
sd = 72

(pnorm(560, mu, sd) - pnorm(440, mu, sd))
# 0.4310458

(pnorm(620, mu, sd) - pnorm(380, mu, sd))
# 0.7724402

(pnorm(680, mu, sd) - pnorm(320, mu, sd)) * 100
# 94.45584

(pnorm(590, mu, sd)- pnorm(410, mu, sd)) * 100
# 62.01197



# 2 - Debt question
# According to the question, debt accumulated a year aftr
# opening account is normally distributed, so pnorm() will
# work here

mu = 700
sd = 180

(pnorm(3300, mu, sd) - pnorm(280, mu, sd))
# .9902

(pnorm(880, mu, sd) - pnorm(520, mu, sd))
# .6827

pnorm(850, mu, sd) # for p(X<x) just the pnorm( uppr)
# 0.7976716

(1 - (pnorm(850, mu, sd))) # 1 - lower bound for p(X>x)
# 0.202328



# 3
# finding percentile in R
# ((pnorm(lwer_bound, mu, sd) - pnorm(uppr_bound, mu, sd)
(pnorm(13.6, 11.5, 2.1) - pnorm(9.4, 11.5, 2.1))



# 4 - histograms of body data
library(xlsx)
data = read.xlsx(choose.files(), 1)

data$BODYFAT

bod_fat <- hist(data$BODYFAT,
     breaks = 15,
     main = "Histogram of Body Fat",
     xlab = 'Percentage of Fat in Body',
     ylab = "Occurences in Data Set",
     col = 'Turquoise',
     border = 'black',
     las = 1)

bod_wght <- hist(data$WEIGHT,
                 breaks = 15,
                 main = "Histogram of Body Weight",
                 xlab = 'Body Weight',
                 ylab = "Occurences in Data Set",
                 col = 'Gold',
                 border = 'black',
                 las = 1)

height <- hist(data$HEIGHT,
               breaks = 15,
               main = "Histogram of Height",
               xlab = "Height in Inches",
               ylab = "Occurences in Data Set",
               col = "purple",
               border = 'blue',
               las = 1)