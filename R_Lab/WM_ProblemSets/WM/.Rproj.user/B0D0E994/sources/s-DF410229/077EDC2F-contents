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


# 20.1
cars = datasets::cars
plot(cars$speed, cars$dist,
     main = "Scatterplot of Car Speed on Distance",
     col = 'purple',
     xlab = 'MPH',
     ylab = 'Stopping Distance',
     frame.plot = F,
     las = 1)


# 20.4
isle = islands
isle
qqnorm(isle)
qqline(isle, col = 'red')


# 21.2
x = seq(0, 4 * pi, length.out = 100)
y = cos(x)
plot(y, type = 'b', col = 'red')


# 21.6
balance = function(deposit = 1000, rate = 0.05, years =30)
{
        return(deposit * (1 + rate) ^ years)
}

balance()

final_bal = c(balance(rate = 0.01, years = 20),
              balance(rate = 0.02, years = 20),
              balance(rate = 0.03, years = 20),
              balance(rate = 0.04, years = 20),
              balance(rate = 0.05, years = 20),
              balance(rate = 0.06, years = 20),
              balance(rate = 0.07, years = 20),
              balance(rate = 0.08, years = 20),
              balance(rate = 0.09, years = 20))


plot(final_bal)










########## R Practice ##########

####### I/O

dump('cars', 'cars_file') # put object into file
rm(cars) # delete the object from the environment
source('cars_file') # reinstate the object by sourcing the file

save.image('file77') # save objects from session into file
load('file77') # load objects from file
getwd()
write.table(Formaldehyde, "Formaldehyde_data") # writes data frame to a file

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



#######  Probability

rbinom(500, 100, .85) # 500 realizations of size 100 w/ 85% probability


# uniform(a = 0, b = 1)
set.seed(9)
runif(5)

x <- 1:1000
# sample( x, size, replace = FALSE, prob = NULL)
sample(7, 5, replace = TRUE) # repeats when replace is true
y = c('three', 'four', 'six')
sample(y, 9, replace = T, prob = 1:3/32)

pbinom(3, 5, 1/2) # probability of 3 heads from 5 tosses of a fair coin
# F(3) = P(X <= 3)
# P(X = 0) + P(X = 1) + P(X = 2) + P(X = 3)

rbinom(100, 70, .5) # 100 variates, of size 70, with a 50% probability
mean(rbinom(100, 70, .9))

# probability of exactly 7 customers arriving at checkout
# between 430 and 445. mean or lambda is 7
dpois(7, 10)

# probability of more than 10; find p(X = 10) then subtract 1 from P(X = 10)
# or use
1 - ppois(10, 10)


####### Graphics
pairs(trees)
contour(crimtab)
image(quakes)
persp(crimtab)
ts.plot(AirPassengers)

plot.ecdf(quakes$depth)
fivenum(quakes$depth)
boxplot(quakes$depth)
qqnorm(quakes)
qqline(islands)
hist(islands)

boxplot(count ~ spray, data = InsectSprays)
boxplot(dist ~ speed, data = cars)

plot(quakes$long, quakes$lat)
symbols(quakes$long, quakes$lat, circles = 2 ^ quakes$mag)

# 3d
pairs(trees)
pairs(iris3)
stars(trees, draw.segments = T)
contour(crimtab)
image(crimtab)
persp(crimtab)
ts.plot(AirPassengers)

par(mar = c(5, 5, 5, 5)) # bottom, left, top, right margin
plot(c(0, 9), c(-10, 20), type = 'n', ylab = "")
text(6, 10, "Plotting Region")
points(4, -10)
points(8, 16, pch = 3)
polygon(c(0, 0, 1, 1), c(0, 2, 1, 0), col = 'gold')
text(2, 19, "bold font", font = 2, cex = .5)
x = seq(0, 4, by = .1)
y = x ^ 2 - 3
lines(x, y)
arrows(6, 6, x[33], y[33])

x = seq(-2, 3, by = 0.01)
y = x ^ 2
plot(x, y, type = "l", lwd = 3, xlab = "", ylab = "",
     xlim = c(-2, 3),
     ylim = c(0, 9), axes = F)
axis(side = 1, labels = T, at = -2:3, font = 1)
axis(side = 2, labels = T, at = c(0, 4, 9), font = 1, las = 1)
text(3.5, -0.3, 'x', font = 1, xpd = T)
text(-2.2, 10.3, 'y', font = 1, xpd = T)


eda = function(x) {
        par(mfrow = c(2, 2))
        boxplot(x)
        hist(x)
        plot.ecdf(x, verticals = T, pch = "")
        qqnorm(x) # is data set evenly distributed
        qqline(x, col = 'red')
}

eda(rivers) # not a good fit
eda(precip)

eda(rnorm(200))
