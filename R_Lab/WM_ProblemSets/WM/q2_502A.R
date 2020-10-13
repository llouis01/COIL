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

# 3b
goods$Total[2] / goods$Total[3] # elec probability

# prob of b given a | question 3c
goods$New[1] / goods$Total[3] / (goods$New[3] / goods$Total[3])
