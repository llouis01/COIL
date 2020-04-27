iris

pl <- iris$Petal.Length

hist(pl,
     probability = TRUE,
     border = 0,
     breaks = 12,
     col = "turquoise",
     main = "Histogram of Iris' Petal Length",
     xlab = "Petal Lengths from 3 species of Iris")

lines(density(pl), col = "black", lwd = 3)

rug(pl, col = "gold", lwd = .5)

summary(pl)
head(pl)
pl
pl <- as.data.frame(pl)
pl
unique(pl)
order(pl, decreasing = TRUE)
PL
pl


fivenum(pl)
summary(pl)

boxplot(pl,
        col = "gold",
        horizontal = TRUE)

# library()
# search()
# rm(list = search())

install.packages("ggplot2")
require("ggplot2")
search()
remove.packages("ggplot2")
