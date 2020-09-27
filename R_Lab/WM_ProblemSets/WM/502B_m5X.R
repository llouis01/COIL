######## Loubens Louis, sEPTEMBER 27TH

# 18.2
source("C:\\Users\\Loube\\Desktop\\smallVector.txt")

# 18.3
x = mean(scan("C:\\Users\\Loube\\Desktop\\mean_scan.txt", quiet = T))
print(paste("the mean of x is ", x, "."))

# 19.1
pnorm(70, 70, 3, lower.tail = F)

# 19.2
dbinom(2, 3, 2/3)

# 19.12
mean(runif(1000000))

# 19.14
prod(rbinom(2, 3, 0.4))









########## R Practice ##########

#### I/O ####

# scan()
x <- scan()
#> x <- scan()
# 1: 2 3 2 3 2 3 3
# 8: 2 3 2
# 11: 3 2 3 4
# 15:
#  Read 14 items
# [1] 2 3 2 3 2 3 3 2 3 2 3 2 3 4

# Reading from outside file
y = scan("C:\\Users\\Loube\\Desktop\\temp.txt")
# can also read from website as scan(url)
# ensure file is in directory or set the path

z = matrix(scan("C:\\Users\\Loube\\Desktop\\temp.txt"), 2, 3)
# scan file in to a matrice

# inputs r output into a file of your choosing then stops with sink()
sink("file.name")
2+2
mean(c(2,3,4,5))
sink()

sink("contract.txt")
print(mean(c(3, 4, 5)))
sink()

source("C:\\Users\\Loube\\Desktop\\smallVector.txt")
# print must be included in instructions otherwise data won't show


####  Probability ####

rbinom(500, 100, .85) # 500 realizations of size 100 w/ 85% probability


# uniform(a = 0, b = 1)
set.seed(9)
runif(5)

x <- 1:1000
# sample( x, size, replace = FALSE, prob = NULL)
sample(7, 5, replace = TRUE) # repeats when replace is true
y = c('three', 'four', 'six')
sample(y, 9, replace = T, prob = 1:3/32)
