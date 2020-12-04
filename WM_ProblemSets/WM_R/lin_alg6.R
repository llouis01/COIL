#### eigenvalues and eigenvectors in R

A = matrix(c(-4, -4, 2, 2), 2, 2)
A

eigen(A)$values
eigen(A)$vectors


####
B = matrix(c(2, 1, 0, -3, 4, -1, 1, 2, 3), 3, 3, byrow = T)
B
det(B)


####### diagonalize a matrix
C = matrix(c(12, -21, 10, -17), 2, 2, byrow = T)
C
P = eigen(C)$vectors
P
zapsmall(solve(P) %*% C %*% P)
eigen(C)$values


### 6.2.2
A = matrix(c(-21, 30, -12, 17), 2, 2, byrow = T)
A
P = matrix(c(3/2, 7/5, 1, 1), 2, 2,  byrow = T)
P
inv_P = matrix(c(1, -7/5, -1, 3/2), 2, 2, byrow = T)
inv_P
inv_P %*% A %*% P
