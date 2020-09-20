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

# probability plot for body fat
reg1 <- lm(data$BODYFAT~data$WEIGHT+data$HEIGHT, data = data)
res1 <- rstandard(reg1)
qqnorm(res1,
       ylab="Standardized Residuals",
       xlab="Normal Scores",
       col = 'red')
qqline(res1)

# # probability plot for body weight
reg2 <- lm(data$WEIGHT~data$BODYFAT+data$HEIGHT, data = data)
res2 <- rstandard(reg2)
qqnorm(res2,
       ylab="Standardized Residuals",
       xlab="Normal Scores",
       col = 'turquoise')
qqline(res2)

# probability plot for height
reg3 <- lm(data$HEIGHT~data$BODYFAT+data$WEIGHT, data = data)
res3 <- rstandard(reg3)
qqnorm(res3,
       ylab="Standardized Residuals",
       xlab="Normal Scores",
       col = 'blue')
qqline(res3)

# 4f mean and sd for body fat, weight and height

mean_fat <- mean(data$BODYFAT)
sd_fat <- sd(data$BODYFAT)

mean_hght <- mean(data$HEIGHT)
sd_hght <- sd(data$HEIGHT)

mean_wght <- mean(data$WEIGHT)
sd_wght <- sd(data$WEIGHT)


# 4g - uppr & lwr bound for sd
fat_lwr_bound_1st <- mean_fat - sd_fat # -1 sd
fat_lwr_bound_2nd <- mean_fat - (2 * sd_fat) # -2 sd
fat_lwr_bound_3rd <- mean_fat - (3 * sd_fat) # -3 sd
fat_upr_bound_1st <- mean_fat + sd_fat # 1 sd
fat_upr_bound_2nd <- mean_fat + (2 * sd_fat) # 2 sd
fat_upr_bound_3rd <- mean_fat + (3 * sd_fat) # 3 sd

hgt_lwr_bound_1st <- mean_hght - sd_hght # -1 sd
hgt_lwr_bound_2nd <- mean_hght - (2 * sd_hght) # -2 sd
hgt_lwr_bound_3rd <- mean_hght - (3 * sd_hght) # -3 sd
hgt_upr_bound_1st <- mean_hght + sd_hght # 1 sd
hgt_upr_bound_2nd <- mean_hght + (2 * sd_hght) # 2 sd
hgt_upr_bound_3rd <- mean_hght + (3 * sd_hght) # 3 sd

wght_lwr_bound_1st <- mean_wght - sd_wght # -1 sd
wght_lwr_bound_2nd <- mean_wght - (2 * sd_wght) # -2 sd
wght_lwr_bound_3rd <- mean_wght - (3 * sd_wght) # -3 sd
wght_upr_bound_1st <- mean_wght + sd_wght # 1 sd
wght_upr_bound_2nd <- mean_wght + (2 * sd_wght) # 2 sd
wght_upr_bound_3rd <- mean_wght + (3 * sd_wght) # 3 sd

# actual count per sd bin for body fat 4G
((sum(data$BODYFAT > fat_lwr_bound_1st & data$BODYFAT < fat_upr_bound_1st) / nrow(data)) * nrow(data))

(sum(data$BODYFAT > fat_lwr_bound_2nd & data$BODYFAT < fat_upr_bound_2nd) / nrow(data)) * nrow(data)

(sum(data$BODYFAT > fat_lwr_bound_3rd & data$BODYFAT < fat_upr_bound_3rd) / nrow(data)) * nrow(data)

#  actual count per sd bin for body height 4G
((sum(data$HEIGHT > hgt_lwr_bound_1st & data$HEIGHT < hgt_upr_bound_1st) / nrow(data)) * nrow(data))

((sum(data$HEIGHT > hgt_lwr_bound_2nd & data$HEIGHT < hgt_upr_bound_2nd) / nrow(data)) * nrow(data))

((sum(data$HEIGHT > hgt_lwr_bound_3rd & data$HEIGHT < hgt_upr_bound_3rd) / nrow(data)) * nrow(data))

# actual count per sd bin for body weight 4G
((sum(data$WEIGHT > wght_lwr_bound_1st & data$wEIGHT < wght_upr_bound_1st) / nrow(data)) * nrow(data))

((sum(data$WEIGHT > wght_lwr_bound_2nd & data$WEIGHT < wght_upr_bound_2nd) / nrow(data)) * nrow(data))

((sum(data$WEIGHT > wght_lwr_bound_3rd & data$WEIGHT < wght_upr_bound_3rd) / nrow(data)) * nrow(data))
