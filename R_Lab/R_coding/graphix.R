x1 <- rnorm(50)
x2 <- rnorm(50)

plot(sort(x), sort(y),
     type = "l",
     col = "turquoise")

plot(1:10,
     axes = F,
     ann = F,
     col = "red",
     xpd = F)

axis(4, at = seq(1, 10, by = 0.5),
     labels = format(seq(1, 10, by = 0.5), nsmall = 1))

box()

mtext(paste("Side", 1:4),
      side = 1:4,
      line = 3.5,
      font = 2)

rm(list=ls())
