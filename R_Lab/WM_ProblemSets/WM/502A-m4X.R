### September 20th


# 3
# finding percentile in R
# ((pnorm(lwer_bound, mu, sd) - pnorm(uppr_bound, mu, sd)
(pnorm(13.6, 11.5, 2.1) - pnorm(9.4, 11.5, 2.1))


# histograms of body data
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


#