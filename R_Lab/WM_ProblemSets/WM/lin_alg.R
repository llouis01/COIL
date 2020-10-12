A = matrix(c(-1, 1, 3, 0, 2, 4), 2, 3, byrow = T)
dim(A)
rowSums(A)
apply(A, 1, max) # max element in rows
apply(A, 2, sd) # sd of columns
3 * A # scalar multiplication; each elment times 3
1/A
t(A) # transpose of A A^t

A %*% t(A) # %*% check for the dimensionality of both matrices
AA_t = A %*% t(A) # AAt

P = matrix(1:4, 2, 2, byrow = T)
P
diag(P) # exctract diagonals of matrice
diag(c(1,4,3,2)) # creates matrice with given numbers
diag(5) # the 5x5 identity matrix
solve(P)
zapsmall(P %*% solve(P))
solve(P, 5:6)
det(P)
eigen(P)
eigen(P)$values[2]
