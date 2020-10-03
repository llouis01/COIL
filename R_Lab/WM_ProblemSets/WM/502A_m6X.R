######### Module 6, Oct. 4

# import needed libraries
library(xlsx)

# import threepwood and emsworth data
te_data <- read.xlsx("C:\\Users\\Loube\\OneDrive - William & Mary\\Bus_Stats_BUAD502A\\Assignments\\buad502a-m6-expert-dataset-net-worth.xls", 1)

# calculate stats for data
te_n <- length(te_data$Customer..)
te_nw <- te_data$Net.Worth
te_mean <- mean(te_nw)
te_sd <- sd(te_nw)
summary(te_nw)
te_se <- te_sd / sqrt(te_n)

# 1a - create histogram of threepwood data
options(scipen = 10) # to display full value on graph

hist(te_nw,
     main = "Histogram of Net Worth for 325 Customers",
     xlab = "Net Worth",
     col = 'turquoise',
     las = 1)

qqnorm(te_nw) # check normality of data
qqline(te_nw, col = 'red')
te_nw[te_nw>800000] # outlier above 800k
te_nw[te_nw<200000] # outlier below 200k

# 2c - t-test
t.test(te_nw, alternative = "two.sided", mu = 425000)
# 2204460492503131 p-value
# can calculate with
# > (te_mean - 425000) / te_se
# [1] 12.20342
# > 2 * pt(12.20342, 324, lower = F)
# [1] 1.934493e-28

# 2f
te_ME <- 1.966 * te_se

# 3a - histogram of bb

# import data
bb_data <- read.xlsx("C:\\Users\\Loube\\OneDrive - William & Mary\\Bus_Stats_BUAD502A\\Assignments\\buad502a-m6-expert-dataset-basketball.xls", 1)

# stats
bb_n <- length(bb_data$Player..)
bb_3p <- bb_data$Mean.3.pointers
bb_mean <- mean(bb_3p)
bb_sd <- sd(bb_3p)
summary(bb_3p)
bb_se <- bb_sd / sqrt(bb_n)

# histogram
hist(bb_3p,
     main = "Histogram of Average Three-Point Goals",
     xlab = "Average Three-Pointer",
     col = 'turquoise',
     las = 1)

qqnorm(bb_3p)
qqline(bb_3p, col = 'red')


# confidence interval
lwr <- bb_mean - (1.97 * bb_se)
upr <- bb_mean + (1.97 * bb_se)
print(paste("Confidence Interval: (", round(lwr, 2), ", ",
            round(upr, 2), ")", sep = ""))


