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
