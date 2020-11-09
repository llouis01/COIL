# steps to solve linear equations
# 2.1.29
A = matrix(c(1, 2, -4, 2, 5, -6, -1, 3, 6), 3, 3, byrow = TRUE)
A
rhs = c(1, 0, -3)
solve(A, rhs)


#### 2.1.30
A = matrix(c(1, 3, -2, 3, 8, -4, -1, 4, -7), 3, 3, byrow=T)
A
rhs = c(-2, -6, 7)
solve(A, rhs)

### 2.2.2
A = matrix(c(1, -2, 0, 1), 2, 2, byrow = T)
rhs = c(6, -3)
solve(A, rhs)

## 2,2,3
A = matrix(c(1, 4, -2, 0, 1, 3, 0, 0, 1), 3, 3, byrow=T)
rhs = c(5, -3, 2)
solve(A, rhs)
A


### 2.2.7
A = matrix(c(2, 1, 0, 0, 3, -1, 1, 2, 1), 3, 3, byrow = T)
A
rhs = c(2, 1, 0)
solve(A, rhs)


### 2.2.15
A = matrix(c(6, 5, 5, 1, 1, 2, 3, 4, 3), 3, 3, byrow = T)
A
rhs = c(1400, 1700, 300, 500, 1000, 1100)
solve(A, rhs)


## 2.6.7
A = matrix(c(1, 3, -2, 5, 16, -5, 4, 13, -6), 3, 3, byrow = T)
rhs = c(4, 27, 26)
solve(A, rhs)


## 2.6.8
A = matrix(c(-1, 5, 4, -2, 6, 4, -1, 1, 1), 3, 3, byrow = T)
rhs = c(-3, -8, -4)
solve(A, rhs)


#### 2.3.1
A = matrix(c(2, -6, 8, -4, 13, 3, -6, 20, 14), 3, 3, byrow = T)
rhs = c(2, 6, -2)
solve(A, rhs)


### 2.3.13
A = matrix(c(1, -3, -2, 3, -9, -9, -1, 4, 3), 3, 3, byrow = T)
rhs = c(2, 9, 3)
solve(A, rhs)


### 2.2.15

A = matrix(c(6, 5, 5, 1, 1, 2, 3, 4, 3), 3, 3, byrow = T)
rhs = c(1400, 300, 1000)
rhs2 = c(1700, 500, 1100)
solve(A, rhs)


### 2.5.7
A = matrix(c(1, 3, -2, 5, 16, -5, 4, 13, -6), 3, 3, byrow = T)
rhs = c(4, 27, 26)
solve(A, rhs)



### 2.4.35
A = matrix(c(3, 6, 4, 3, 3, 4, 3, 2, 4), 3, 3, byrow = T)
rhs = c(18, 15, 14)
solve(A, rhs)


## simplex
library(boot)
a = c(20, 30)
A1 = matrix(c(1, 2, 3, 2), 2, 2, byrow = T)
b1 = c(200, 300)
simplex(a, A1, b1, maxi = T)


## simplex 2.6.31
a = c(4, 8)
A1 = matrix(c(5, 1, 6, 2), 2, 2, byrow = T)
b1 = c(8, 4)
simplex(a, A1, b1, maxi = T)


### simplex 2.6.32
a = c(-10, -12, 8)
A1 = matrix(c(-4, -8, 4, 4, -2, 2), 3, 3, byrow = T)
b1 = c(16, 20)
simplex(a, A1, b1, maxi = T)
