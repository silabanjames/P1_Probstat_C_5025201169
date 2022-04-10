#a
n = 3
p = 0.20
dgeom(x = n, prob = p)

#b
mean(rgeom(n = 10000, prob = p) == 3)


#d
x=10000
y=rgeom(x,.2)
hist(y)

#e
1/p
(1-p)/ p^2

