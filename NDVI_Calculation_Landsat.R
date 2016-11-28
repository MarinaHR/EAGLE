#NDVI Calculation
#Marina Reiter

install.packages("rgdal")
library(raster)
library(rgdal)

fun_ndvi <- function(nir,red){(nir-red)/(nir+red)}

band_3 <- raster('/Users/Marina/Documents/Universität/Uni Würzburg/1. Semester/Digital Image Analysis and GIS/Data/Landsat Data/LT51930272003195MTI01_B3.TIF')
band_4 <- raster('/Users/Marina/Documents/Universität/Uni Würzburg/1. Semester/Digital Image Analysis and GIS/Data/Landsat Data/LT51930272003195MTI01_B4.TIF')

red <- band_3
nir <- band_4
ndvi_landsat <- fun_ndvi(nir,red)

ndvi_landsat
plot(ndvi_landsat)

