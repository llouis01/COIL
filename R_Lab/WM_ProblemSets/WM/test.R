par(mar = c(5, 5, 5, 5)) # bottom, left, top, right margin
plot(c(0, 9), c(-10, 20), type = 'n', ylab = "")
text(6, 10, "Plotting Region")
points(4, -10)
points(8, 16, pch = 3)
polygon(c(0, 0, 1, 1), c(0, 2, 1, 0), col = 'gold')
text(2, 19, "bold font", font = 2, cex = .5)
x = seq(0, 5, by = .1)
y = x ^ 2 - 3
lines(x, y)
arrows(6, 6, x[33], y[33])

## part 2
plot(x, y, type = "l", lwd = 3, xlab = "", ylab = "",
     xlim = c(-2, 3),
     ylim = c(0, 9), axes = F)
axis(side = 1, labels = T, at = -2:3, font = 1)
axis(side = 2, labels = T, at = c(0, 4, 9), font = 1, las = 1)
text(3.5, -0.3, 'x', font = 1, xpd = T)
text(-2.2, 10.3, 'y', font = 1, xpd = T)