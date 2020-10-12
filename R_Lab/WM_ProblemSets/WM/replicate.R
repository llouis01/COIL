set.seed(3)
nrep = 500000
count = 0
for (i in 1:nrep) {
  roll = sample(6, 5, replace = T)
  if (sum(roll[1:3])==3 | sum(roll[2:4])==3 | sum(roll[3:5])==3) count = count + 1
}
print(count/nrep)



s = function() sum(sample(6, 5, replace = F))
replicate(500000, s()) == 15
s
