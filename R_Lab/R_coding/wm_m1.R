require('xlsx')

data <- read.csv(choose.files())

# the categorical vars are: order date, region, Rep, item

table(data$OrderDate) # table() generates a freq table
table(data$Region)
table(data$Rep)
table(data$Item)
