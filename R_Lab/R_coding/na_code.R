x1 <- c(12, 32, 43, 25, NA, 53)
x1
plot(x1, col = "darkred")
mean(x1, is.na = T)
# x1 <- x1 != 'NA'
# x1
which(is.na(x1))
x2 <- x1
x2[is.na(x2)] <- 0
x2
x3 <- ifelse(is.na(x1), 0, x1)
x3
