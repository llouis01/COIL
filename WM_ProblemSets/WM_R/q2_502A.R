######### 1
rm(list=ls())
obs <- c(211, 169, 43)
prop <- c(.55, .325, .125)
n <- 423

expc <- prop * n
expc

res = obs - expc
sq_res = res ^ 2
exp_res = sq_res / expc
chi = sum(exp_res)
chi

dof <- length(obs) - 1
dof

mean_chi <- dof
# mean of chi_sq distro = dof

# yes, nearly six times bigger. a large chi-sq, data doesn't fit

qchisq(.95, 2)
1 - pchisq(chi, dof) # reject the null




########### 2

library(xlsx)
knobs <- read.xlsx("C:\\Users\\Loube\\OneDrive - William & Mary\\Bus_Stats_BUAD502A\\Assignments\\buad502a-m7-expert-dataset1-knobs.xls", 1)

prom1 <- c( 163, 122, 40)
prom2 <- c(156, 125, 44)
prom3 <- c(185, 119, 21)
prom4 <- c(175, 115, 35)
prom5 <- c(177, 103, 45)

n = 325

promos = rbind(prom1, prom2, prom3, prom4, prom5)

expc_table <- matrix(NA, 5, 3)
expc_table[,1] <- n * prop[1]
expc_table[,2] <- n * prop[2]
expc_table[,3] <- n * prop[3]
expc_table # expected counts per promo and types of knobs


residuals <- promos - expc_table
residuals
residuals_sq <- residuals**2
residuals_sq
residuals_exp <- residuals_sq/promos
residuals_exp
chi <- sum(residuals_exp)
chi


dof = (nrow(promos) - 1) * (ncol(promos) - 1)
dof

qchisq(.95, dof)




############ 3

rm(list=ls())
househld <- c(242, 443, 798, 45, 1528)
elec <- c(123, 302, 768, 28, 1221)
totals <- househld + elec
goods <- rbind(househld, elec, totals)
goods
colnames(goods) <- c("New", "Open Box",
                     "Used", "Needs Repair", "Total")
goods <- data.frame(goods)
goods

# 3a
goods$Total[2] / goods$Total[3] # elec probability

# 3b
goods$Used[1]/goods$Total[3]

# 3c
goods$New[1] / goods$Total[3] / (goods$New[3] / goods$Total[3])

# 3d
# total of electronic items regardless of condition
(goods$Total[2] / goods$Total[3]) * goods$Total[3]

# 3f
probs <- 1/8
exp_hshld <- c(probs*goods$Total[3],probs*goods$Total[3],probs*goods$Total[3],probs*goods$Total[3],4*probs*goods$Total[3])

exp_elec <- c(probs*goods$Total[3],probs*goods$Total[3],probs*goods$Total[3],probs*goods$Total[3],4*probs*goods$Total[3])
goods <- rbind(goods, exp_hshld, exp_elec)
goods

hshld_res <- ((goods[1,] - goods[4,])**2)/exp_hshld
elec_res <- ((goods[2, ] - goods[5,])**2)/exp_elec
chi <- sum(exp_hshld, exp_elec)
chi

p_val <- 1 - pchisq(chi, 3)




######## question 4

hshld_finish <- c(533, 995)
elec_finish <- c(467, 754)
goods_finish <- rbind(hshld_finish, elec_finish)
goods_finish
colnames(goods_finish) <- c("Stainless", "Other")
goods_finish
chisq.test(goods_finish)


# confidence interval
stain_finsih <- 1000
other_finsih <- 1749

phat_stainless <- stain_finsih / 2749
phat_other <- other_finsih/2749 # 2749 is the total of both

diff <- phat_stainless - phat_other

se <- sqrt((phat_stainless * (1 - phat_stainless)) / 1000) +
  (phat_other * (1 - phat_other)/1749)

halfwidth <- (1.96 * se)
ll <- diff - halfwidth
ul <- diff + halfwidth

ll # lower level
ul # upper level




################  question 5
rm(list=ls())

library(xlsx)

sheep <- read.xlsx("C:\\Users\\Loube\\OneDrive - William & Mary\\Bus_Stats_BUAD502A\\Assignments\\buad502a-m7-expert-dataset3-sheep.xls", 1)

sheep_lm <- lm(sheep$Farm.Revenue.per.month~sheep$Number.of.apples.fed.to.sheep.per.day.per.month.)

summary(sheep_lm)

plot(sheep$Number.of.apples.fed.to.sheep.per.day.per.month., sheep$Farm.Revenue.per.month,
     main = "Revenue from Apple-fed Sheep",
     xlab = "Number of Apple Fed per Month",
     ylab = "Revenue per Month",
     las = 1,
     col = 'turquoise')
abline(sheep_lm$coefficients, col = 'red')


reg_line <- function(x) {
  res <- sheep_lm$coefficients[1] + (sheep_lm$coefficients[2] * x)
  return(res)
}
reg_line(1200)

apple_1200 <- as.numeric(1200 * coef(sheep_lm)[2] + coef(sheep_lm)[1])
apple_1200

se<- as.numeric(summary(sheep_lm)[6])
se
ll <- apple_1200 - (1.96 * se)
ul <- apple_1200 + (1.96 * se)
ll
ul

summary(sheep_lm)[6] # spread around the line

apple_25000 <- as.numeric(25000 * coef(sheep_lm)[2] + coef(sheep_lm)[1])
apple_25000


ll25000 <- apple_25000 - (1.96 * se)
ul25000 <- apple_25000 + (1.96 * se)
ll25000
ul25000
