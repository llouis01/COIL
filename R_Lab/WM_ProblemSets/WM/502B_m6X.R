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