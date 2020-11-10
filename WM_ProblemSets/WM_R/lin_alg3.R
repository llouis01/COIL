##### module 3 matrices and determinants

## matrix multiplication

A = matrix(c(72, 54, 47, 37, 28, 33, 43, 32, 25), 3, 3, byrow = T)
B = matrix(c(3, 5, 4, 7, 8, 15), 3, 2, byrow = T)
A%*%B # matrix multiplication in R


# 3.1.21 A + 2B
A = matrix(c(5, -1, 6, -4, 3, 2), 2, 3, byrow = T)
two_B = 2 * matrix(c(-2, 3, -5, -3, 4, 1), 2, 3, byrow = T)
A + B
# good

## B - 2A
B = matrix(c(-2, 3, -5, -3, 4, 1), 2, 3, byrow = T)
two_A = -2 * matrix(c(5, -1, 6, -4, 3, 2), 2, 3, byrow = T)
B + two_A

## -3(6A)

six_A = 6 *  matrix(c(5, -1, 6, -4, 3, 2), 2, 3, byrow = T)
-3 * six_A

## practice w/ Dr. Leemis
col1 = c(5, 6, 7)
col2 = 1:3
A = cbind(col1, col2)
A
t(A)
A %*% t(A)
