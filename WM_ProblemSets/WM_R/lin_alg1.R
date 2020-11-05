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
