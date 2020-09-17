### 502B

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
# will return

# replace -1's from dataframe with 'NA'

z = c(-1:2)
y = c(2:5)
p = c(2:-1)
a = data.frame(z, y, p)
a
a_new = replace(a, a<0, 'NA')
a_new
