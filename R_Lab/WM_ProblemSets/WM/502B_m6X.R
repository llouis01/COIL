########## October 4th

# if (condition) {
#   condition
# }

my.abs <- function(x) {
  if (mode(x) != "numeric") stop("non-numeric argument!")
  x[x<0] = -x[x<0]
  return(x)
}

my.abs(-3)
my.abs(0)
my.abs(9)
my.abs(c(-2, 0, 3, -17))
my.abs("hello")

my_cars = cars

leapyear = function(year) {
  # if year divisible by 4 but not by 100 and divisble by 400
  if (year %% 4 == 0 && year %% 100 != 0 || year %% 400 == 0)
    return(TRUE)
  else
    return(FALSE)
}
leapyear(2021)
leapyear(2022)
leapyear(2023)
leapyear(2024)


strRev = function(x) {
  paste(rev(substring(x, 1:nchar(x), 1:nchar(x))), collapse = "")
}

is.palin = function(x){
  if (mode(x) != 'character') stop('Non-character Input')
  if (x == strRev(x)) print('It\'s a palindrome') else return(FALSE)
}

is.palin("Anna")

describe = function(x){
  n = length(x)
  if (n == 1) cat("The vector has 1 element.\n")
  else        cat("The vector has ", n, "elements.\n")
}

describe('9384756')
describe(1:13)
describe(c(3, 5, 4, 'uty'))

catalan = function(n) {
  if (n < 0) stop("non-negative input only")
  cat_n = ((factorial(2*n)) / (factorial(n + 1) * factorial(n)))
  return(cat_n)
}



catalan(10)


# fibonacci with while loop
fib = numeric(10)
fib[1] = 1
fib[2] = 1
i = 3
j = 10

while (i <= 10) {
  fib[i] = fib[i - 1] + fib[i -2]
  i = i + 1
}
fib

# for loop

fib = rep( 1, 10)
for (i in 3:10) {
  fib[i] = fib[i - 1] + fib[i - 2]
}
fib

fact1 = function(x) {
  if (x<0) stop('non-negative input')
  i = 1
  for (j in 2:x) i = i * j
  return(i)
}



# sieve of eratosthenes
prime =



### Module 6

# 22.3
n = 10

choose(2*n, n) / (n + 1)
factorial(2*n) / (factorial(n) * factorial(n + 1))





# 23.4
n = 1000000
x <- rpois(n, 3) + rpois(n, 5)




# 24.2
Fib = function(n) {
  if (n < 0) stop('non-negative input')
  i = rep(1, n)
  if (n == 1) return(1)
  if (n == 0) return(0)
  i[3] = 3
  return(Fib(n -1) + Fib(n -2))
}

Fib(6)

