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

#29.11.2016
install.packages("RStoolbox")
library(RStoolbox)
library(ggplot2)
data("lsat")

ndvi_2 <- spectralIndices(lsat,red="B3_dn",nir="B4_dn",indices = "NDVI")
ndvi_2
ggR(ndvi,geom_raster = TRUE)+scale_fill_gradientn(colours = c("black","white"))

ndvi_na <- ndvi_2 #generate a copy
ndvi_na[ndvi_na<0] <- NA # replace every value below 0 with NA
ndvi_na

function1 <- function(x){x[x<0] <- NA;return(x)}
calc(ndvi_na,fun=function1)
overlay(ndvi_na,fun=function1)

band_1 <- raster('/Users/Marina/Documents/Universität/Uni Würzburg/1. Semester/Digital Image Analysis and GIS/Data/Landsat Data/LT51930272003195MTI01_B1.TIF')
band_2 <- raster('/Users/Marina/Documents/Universität/Uni Würzburg/1. Semester/Digital Image Analysis and GIS/Data/Landsat Data/LT51930272003195MTI01_B2.TIF')
band_3 <- raster('/Users/Marina/Documents/Universität/Uni Würzburg/1. Semester/Digital Image Analysis and GIS/Data/Landsat Data/LT51930272003195MTI01_B3.TIF')
band_4 <- raster('/Users/Marina/Documents/Universität/Uni Würzburg/1. Semester/Digital Image Analysis and GIS/Data/Landsat Data/LT51930272003195MTI01_B4.TIF')
band_5 <- raster('/Users/Marina/Documents/Universität/Uni Würzburg/1. Semester/Digital Image Analysis and GIS/Data/Landsat Data/LT51930272003195MTI01_B5.TIF')
band_6 <- raster('/Users/Marina/Documents/Universität/Uni Würzburg/1. Semester/Digital Image Analysis and GIS/Data/Landsat Data/LT51930272003195MTI01_B6.TIF')
band_7 <- raster('/Users/Marina/Documents/Universität/Uni Würzburg/1. Semester/Digital Image Analysis and GIS/Data/Landsat Data/LT51930272003195MTI01_B7.TIF')

lsat_allbands <- stack(band_1,band_2,band_3,band_4,band_5,band_6,band_7)
plot(lsat_allbands)
