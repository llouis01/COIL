### 502B Sept 20th - Loubens Louis

# create a list and extract value out of it
x <- list('gnu', c(3:7), months = month.abb)
x
x$months[4]

# make a dataframe and extract from it

creatures = c("dog", "cat", "armadillo", "human")
friendly = c(TRUE, TRUE, FALSE, TRUE)
diet = c("cats", "mice", "termites", "twinkies(tm)")
waking.hours = c(13.9, 11.5, 5.9, 16.0)

creature.data = data.frame(row.names = creatures,
                           friendly, diet, waking.hours)

ordered_creatures = creature.data[order(row.names(creature.data)) , ]

ordered_creatures

# replace -1's from dataframe with 'NA'

z = c(-1:2)
y = c(2:5)
p = c(2:-1)
a = data.frame(z, y, p)
a
a_new = replace(a, a<0, 'NA')
a_new


# cars mean stopping distance
cars
mean(cars[, 2])

cars = cars
cars
cars$speed
cars$speed[cars$speed%%2==0]
even_speed_cars = subset(cars, cars$speed%%2==0, select = c('speed', 'dist'))
even_speed_cars
