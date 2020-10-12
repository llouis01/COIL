#### Simulation Chapter 25
# prime modulus multiplicative linear congruential generator

# with a, m and x0

x = numeric(14) # list must have length(mod) because generator is full period
x[1] = 3 # set as seed
for (i in 2:14) x[i] = (7 * x[i - 1]) %% 61
print(x)
# notice how the list went back to the seed

plot(x/61)
plot(runif(14))


par(mfrow = c(2,1))
x = numeric(60) # list must have length(mod) because generator is full period
x[1] = 3 # set as seed
for (i in 2:60) x[i] = (7 * x[i - 1]) %% 61
u = x/61
plot(0, 0, type = 'n', xlim = c(0,1), ylim = c(0,1))
for (i in 2:60) points(u[i - 1], u[i], pch = 10)
points(u[60], u[1], pch = 10) # plot for pairs of random numbers


u = runif(60)
plot(0, 0, type = 'n', xlim = c(0,1), ylim = c(0.1))
for (i in 2:60) points(u[i - 1], u[i], pch = 10)
points(u[60], u[1], pch = 10)
par(mfrow = c(1,1))


### Monte Carlo for alternating men and women in 5 chairs
nrep = 100000
count = 0
for (i in 1:nrep) {
  x = sample(5)
  if (x[1] * x[3] * x[5] == 15) count = count + 1
} # 15 is from the position of the odd numbers; odd = male
print(count/nrep)


### Monte Carlo simulating the probability of rolling a ten in 3 fair dice
nrep = 1000000
count = 0
for (i in 1:nrep) {
  roll = sample(1:6, 3, replace = T)
  if (sum(roll) == 10) count = count + 1
}
print(count/nrep)



### Urn exercise
set.seed(4)
nrep = 100000
count = 0
for (i in 1:nrep){
urn1 = c(0, 0, 0, 1, 1)
urn2 = c(0, 1, 1, 1)
x = sample(5, 1) # index for urn1 first ball
urn2 = c(urn2, urn1[x]) # transfer ball from urn1 to urn2
y = sample(5, 1) # set y as index of urn 2 ball picked
urn1[x] = urn2[y] # transfer from urn2 to urn1
if (sample(urn1, 1)==1) count = count + 1
}
print(count/nrep)




### calculate 90th percentile between 2 points
nrep = 4000000
x1 = runif(nrep)
x2 = runif(nrep)
y1 = runif(nrep)
y2 = runif(nrep)
d = sqrt((x1 - x2)^2 + (y1 - y2)^2)
sort(d)[0.9 * nrep] # sort results based on the 90th percentile

for (i in 1:20) {
  plot(runif(2), runif(2), pch = 19, xlim = c(0,1), ylim = c(0,1), type = 'o')
  Sys.sleep(1)
}




################################################




### Exercise 25.2
nrep = 100000
count = 0
for (i in 1:nrep){
  roll = sample(1:6, 6, replace = T) # 6 faces, 6 rolls. no replace
  if (roll == sample(c(1, 2, 3, 4, 5, 6))) count = count + 1
}
print(count/nrep)
print(count)
#print(roll) # check the rolls for verification


### Exercise 25.3
nrep = 100000
count = 0
set.seed(4)
for (i in 1:nrep) {
  x = sample(rep(c('x', 'y'), c(40, 10)))
  if(any(head(x, -1) == 'y' & tail(x, -1) == 'y')) count = count + 1
}
print(1 - (count/nrep))


#### 25.4
set.seed(3)
nrep = 500000
count = 0
for (i in 1:nrep) {
  roll = sample(6, 5, replace = T)
  if (sum(roll[1:3])==3 | sum(roll[2:4])==3 | sum(roll[3:5])==3) count = count + 1
}
print(count/nrep)


#### 25.10
nrep = 100000
count = 0
for (i in 1:nrep) {
  x = sample(6, 5, replace = T)
  if (min(x) >= 2) count = count + 1
}
print(count/nrep)


##### 26.2
hist(precip)
n = length(precip)
xbar = mean(precip)
critv = qt(1 - 0.1/2, n - 1)
sdev = sd(precip)
se = sd/sqrt(n)
half = critv * se
xbar + c(-1, 1) * half