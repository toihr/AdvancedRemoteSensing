library(terra)

#1
#Downloaded the Data this is DEM data from the eye of the sahara also known as Guelb er Richat
DEM = rast("n21_w012_1arc_v3.tif")
setMinMax(DEM)

cropsub = c(-12.0,-10.99,21,21.5)

DEM_eye = crop(DEM,cropsub)
plot(DEM_eye, col = terrain.colors(255))

#3
DEM_eye.slope = terrain(DEM_eye, v = "slope", unit ="degrees")
DEM_eye.aspect = terrain(DEM_eye, v = "aspect", unit ="degrees")

#4
q10 = global(DEM_eye.slope, quantile,probs = seq(0,1,0.1),na.rm=TRUE)
plot(DEM_eye.slope, breaks = q10)

#5
plot(DEM_eye.aspect, breaks = 10)

#6


clVector = c(-.0000001,45,135,225,315)
aspect.cl = classify(DEM_eye.aspect,clVector)

plot(aspect.cl,col = )


