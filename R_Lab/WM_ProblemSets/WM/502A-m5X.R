#### September 27th, 2020 - Loubens Louis

library(xlsx)

# 1a -- Create histogram for zip code simulation data
zip_data <- read.xlsx(choose.files(), 1)
hist(zip_data$X..Successes,
     main = 'Zip Code Simulation Histogram',
     xlab = 'Success Rate',
     col = 'Turquoise',
     las = 1)
