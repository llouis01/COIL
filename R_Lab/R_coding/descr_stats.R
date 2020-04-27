data(mtcars)
install.packages("psych")
require("psych")

d <- describe(mtcars[c(1, 4, 7)])
d[, c(3, 4, 11, 12)]
