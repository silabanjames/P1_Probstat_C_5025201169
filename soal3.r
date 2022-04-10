#a
dpois(6, 4.5)

#b
p1 = rpois(365, 4.5)
hist(p1)

p2 = (rpois(365, 4.5) == 6)
mean(p2)
