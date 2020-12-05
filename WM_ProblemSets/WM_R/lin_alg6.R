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


##### A = PDP_inv
P= matrix(c(11, 3, 7, 2), 2, 2, byrow = T)
P_inv = matrix(c(2, -3, -7, 11), 2, 2, byrow = T)
D = matrix(c(2, 0, 0, 1), 2, 2, byrow = T)
P
P_inv
D
P %*% D %*% P_inv
###

#### Markov Chains
TT = matrix(c(4/5, 1/5, 2/5, 3/5), 2, 2)
TT %*% TT %*% TT %*% TT %*% TT %*% TT %*% TT %*% TT
D = diag(eigen(TT)$values)
D
P = eigen(TT)$vectors
P
P %*% D^7 %*% solve(P)
###