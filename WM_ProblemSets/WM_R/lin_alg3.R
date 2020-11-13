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


## 3.2.39
A = matrix(c(1, 1, -1, 4, 6, -2, 4, 5, -1), 3, 3, byrow = T)
solve(A)


### leontif open model
C = matrix(c(.9, .1, .2, .6), 2, 2)
D = c(100, 200)
I = diag(2)

X = solve(I - C) %*% D
X
X = solve(I - C, D)
X

4000 - (.9 * 4000) - (.2 * 1500)
1500 - (.1 * 4000) - (.6 * 1500)


C = matrix(c(.3, .3, .1, .1, .5, 0, .5, .1, .7), 3, 3)
D = c(14,7,14)
I = diag(3)
I
X = solve(I - C)
X
I - C

X
X = solve(I - C, D)
X

inv_IC = matrix(c(.214, .143, .071, .0429, .229, .0143, .371, .31, .45), 3, 3)
inv_IC = inv_IC * 100

inv_IC %*% D

## calc determinants
A = matrix(c(6, 4, 5, 7, 2, 1, -5, -3, 8), 3, 3, byrow = T)
A
det(A)

B = matrix(c(0, 0, 0, 2, 0, 0, 2, 0, 0, 2, 0, 0, 2, 0, 0, 0), 4, 4, byrow = T)
B
det(B)



A = matrix(c(6, -6, 0, 0, 2, -1, -6, 0, 3), 3, 3, byrow = T)
A
det(A)
