#### September 27th, 2020 - Loubens Louis

library(xlsx)

# 1a -- Create histogram for zip code simulation data
# p_hat = success/n
zip_data <- read.xlsx(choose.files(), 1)


hist(zip_data$X..Successes,
     main = 'Zip Code Simulation Histogram',
     xlab = 'Success Rate',
     col = 'Turquoise',
     las = 1)

# 1d
sum_num_succ <- sum(zip_data$X..Successes)
sd_zip <- sqrt(.85 * .15)/50000
se_zip <- sqrt(.84 * .16)/50000

# 2a
ME = 0.025
conf = 1.96
n_size = 0.5 * 0.5 / ((ME / conf)**2)
n_size

# 2B
conf2 <- 2.576
n_size2 <- 0.5 * 0.5 / ((ME / conf2)**2)
n_size2

# 2c
ME2 <- 1
n_size3 <- 0.5 * 0.5 / ((ME2 / conf)**2)
n_size3


## 3a

n = 867
p_hat <- .65

confIntr <- function(p_hat, n, conf = .98)
{
  se = sqrt((p_hat * (1 - p_hat))/n)
  al2 = 1 - (1 - conf)/2
  zstar = qnorm(al2)
  ul = p_hat + zstar*se
  ll = p_hat - zstar*se
  return(c(ll, ul))
}

confIntr(p_hat, n)


# confidence int
# p_hat +- z-val * se(p_hat)
# ME = z-val * se(p_hat) then conf int is estimate += ME

### Olena session
predict = .32
n = 425
yes = 195
p_hat = yes / n

h0 <- predict
sd_p_hat <- sqrt((predict * (1 - predict))/n)

se_p_hat <- sqrt((p_hat * (1 - p_hat))/n)

z_stat <- (p_hat - predict) / se_p_hat

library(stats)

prop.test(260, 500, 0.5, 'two.sided', correct = F)


# 4b
p4_hat <- 14/60
p4_hat

se_p4_hat <- sqrt((p4_hat * (1 - p4_hat))/n)
conf_ll <- p4_hat - 1.96 * se_p4_hat
conf_ul <- p4_hat + 1.96 * se_p4_hat
print(paste("Confidence Interval --> (", round(conf_ll, 2), ", ", round(conf_ul, 2), ")", sep = ""))


# 5b
p = .32
n = 425
phat <- 195/425
sd_ph <- sqrt((phat * (1 - phat)) / n)
sd_ph



# 6
n6 <- 913
p17 <- .54
p18 <- .53
all_2017 <- n6 * p17
all_2018 <- n6 * p18
z_score <- (all_2017 + all_2018) / (n * 2)