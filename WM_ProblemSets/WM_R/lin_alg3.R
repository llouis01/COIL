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

A = matrix(c(2, 8, 3, -7), 2, 2, byrow = T)
det(A)


# markov
TT = matrix(c(4/5, 2/5, 1/5, 3/5), 2, 2, byrow = T)
initial = c(1/3, 2/3)
library(MASS)
fractions(initial)
fractions(TT %*% initial)
fractions(TT %*% TT %*% initial)

fractions(TT %*% TT)

##### 3.6.1
A = matrix(c((3/4), 3/8, 1/4, 5/8), 2, 2, byrow = T)
A = fractions(A)
initial0 = c(.4, .6)
initial1 = fractions(A) %*% initial0
# ((3/4 * 2/5) + (3/8*3/5))
# ((1/4 * 2/5) + (5/8 * 3/5))
##
A_sq = fractions(A %*% A)
#((3/4 * 3/4) + (3/8 * 1/4))
#((3/4 * 3/8) + (3/8*5/8))
#((1/4*3/4) + (5/8 * 1/4))
#((1/4 * 3/8) + (5/8*5/8))
initial2 = A_sq %*% initial0
# ((21/32*.4) + (33/64*.6))
#((11/32*.4) + (31/64*.6))
#####


####
TT = matrix(c(-1/5, 2/5, 1/5, -2/5), 2, 2, byrow = T)
TT = fractions(TT)
TT
TN = TT
for (i in 1:1000) TN = TN %*% TT
TN

TT = matrix(c(4/5, 2/5, 1/5, 3/5), 2, 2, byrow = T)
TT
TT %*% TT
TT%*%TT%*%TT
(TT%*%TT%*%TT%*%TT) %*% S3
TN
####

#### 3.6.7
TT = matrix(c(.63, .59, .37, .41), 2, 2, byrow = T)
S0 = c(.73, .27)
S1 = TT %*% S0
# ((.63 * .73) + (.59*.27))
# ((.37*.73) + (.41*.27))

TT_sq = TT %*% TT
# ((.63*.63) + (.59*.37))
# ((.63*.59) + (.59*.41))
# ((.37*.63) + (.41*.37))
# ((.37*.59) + (.41*.41))

TT_sq %*% S0
# ((.6152*.73) + (.6136*.27))
# ((.3848*.73) + (.3864*.27))

TT_I = TT - diag(2)
TT %*% S3
S3 = c(.6146, .3854)
TT_I %*% S3
fractions(TT_I %*% S3)
TT %*% S3
#########


### 3.6.13
TT = matrix(c(.2, .9, .8, .1), 2, 2, byrow = T)
TT %*% TT %*% TT %*% TT %*% TT%*%TT%*%TT
A = matrix(c(4/10, -1/10, 2/10, 2/10), 2, 2, byrow = T)
det(A)
solve(A)
