library(maps)       # Provides functions that let us plot the maps
library(mapdata) 
#map('worldHires')
## map('worldHires', c('Peru', 'Chile', 'Colombia','Brazil', 'Ecuador'))
## lima 12.045093, -77.042648
## points(-77.0428,-12.0464,col=2,pch=18)
## arequipa -16.396229, -71.536694
## points(-71.536694,-16.396229,col=3,pch=18)
ciudades <- read.table(file="all_cities.csv", header=FALSE, sep=";")
name="test.tif"


#for(i in 1:nrow(ciudades)){
 for(i in 1:100){
  name<-paste(i,".tif", sep="")
  tiff(name,width=480)
  map('worldHires','Peru')
  my_title=ciudades$V1[i]
  title(my_title)
  for(j in 1:i){
    # print(j)
    x=ciudades$V2[j]
    y=ciudades$V3[j]
    points(y,x,col=3,pch=18)
  }
  dev.off()
}

