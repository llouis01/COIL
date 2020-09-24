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

mean(zip_data$X..Successes)
sd(zip_data$X..Successes)
(mean(zip_data$X..Successes) - sd(zip_data$X..Successes)) # lower boundary
(mean(zip_data$X..Successes) + sd(zip_data$X..Successes)) # uppr boundary

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


