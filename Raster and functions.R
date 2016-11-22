#homework

nd <- runif(200,min=0,max=1)
nd
nd1 <- raster(nrows=100,ncol=100)
nd1[] <- nd[1:200]
nd1
plot(nd1)

table(cut(nd,breaks=c(0.25,0.5,0.75,1)))

nd1 <- nd1[]
nd1


#fortsetzung 22.11.2016 ()

a <- sqrt(2)
if(a*a!=2){print("R is great!")} # if argument 1 is correct, do argument 2

j <-0
while(j<1){j <-j+0.1;print(j)} # if argument is true, calculate according to arg.2 till arg.1 is false

myfunction <- function(x,y){
  z<-x+y
  return(z)
}
myfunction(4,3)

fun_ndvi <-function(nir,red){(nir-red)/(nir+red)}

nd2 <- raster(nrows=100,ncols=100)
nd2[] <- nd[1:200]
nd2


nd3 <- raster(nrows=100,ncols=100)
nd3[] <- nd[1:200]
nd3


nd4 <- raster(nrows=100,ncols=100)
nd4[] <- nd[1:200]
nd4

nd1234 <- stack(nd1,nd2,nd3,nd4)

#other approach
r1 <- raster(nrows=100,ncols=100) # creating raster
r1[] <- runif(1000)
r1$b2 <- runif(1000) #creating different layers of the raster
r1$b3 <- runif(1000)
r1$b4 <- runif(1000)

ndvi_fun <- function(nir,red){(nir-red)/(nir+red)}
ndvi <- ndvi_fun(r1[[4]],r1[[3]])
plot(ndvi)


r1 <- raster(nrows=100,ncols=100) # creating raster
r1[] <- runif(1000)
r1$b2 <- runif(1000) #creating different layers of the raster
r1$b3 <- runif(1000)
r1$b4 <- runif(1000)

r1 <- r1[]
install.packages("cluster")
?kmeans()
c <- kmeans(r1,3,iter.max=10,nstart=1)
str(c)
r2[] <- c$cluster
r2
plot(r2)

band_3 <- raster
install.packages("RStoolbox")
library(RStoolbox)
data("lsat")
plot(lsat)
plotRGB(lsat, 3,2,1, stretch="lin")