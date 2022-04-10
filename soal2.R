x = 10000
pa = 20
pr = .2

#a
dbinom(x=4, size=pa, prob=pr)

#b
y = rbinom(x, pa, pr)
hist(y)

#c
pa*pr

pa*pr*(1-pr)