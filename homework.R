#homework
#marina reiter

x <- seq(1,100,by=2.5)
x


#cut() function
b <- cut(x,breaks = 0:100)
b

a <- cut(x,breaks = 100)
a


#sort()
g <- c(2,25,6,12,9)
s <- sort(g)
s


#order()
o <- order(g)
o


#quantile()
q <- quantile(g,1)
q