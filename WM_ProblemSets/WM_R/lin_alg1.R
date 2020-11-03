row1 = c(1, 2, 1)
row2 = c(0, 1, -4)
row3 = c(-3, 0, 3)
A = rbind(row1, row2, row3)
rhs = c(0, 4, -6)
solve(A, rhs)
# x1, x2, x3
