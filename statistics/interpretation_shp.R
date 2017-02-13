##shapefile-results

shp=read.table("ticks_2Dshape_results.csv", sep ="",header=TRUE)
shp_uniform=shp[which(shp$distribution=="uniform"&shp$asd==0.0),]
shp_uniform_05=shp[which(shp$distribution=="uniform"&shp$asd==0.5),]
shp_random=shp[which(shp$distribution=="random"),]


shp_uniform_15=shp[which(shp$distribution=="uniform"&shp$available.locations==15&shp$asd==0.0),]
shp_uniform_30=shp[which(shp$distribution=="uniform"&shp$available.locations==30&shp$asd==0.0),]
shp_uniform_45=shp[which(shp$distribution=="uniform"&shp$available.locations==45&shp$asd==0.0),]
shp_uniform_15_05=shp[which(shp$distribution=="uniform"&shp$available.locations==15&shp$asd==0.5),]
shp_uniform_30_05=shp[which(shp$distribution=="uniform"&shp$available.locations==30&shp$asd==0.5),]
shp_uniform_45_05=shp[which(shp$distribution=="uniform"&shp$available.locations==45&shp$asd==0.5),]
shp_random_15=shp[which(shp$distribution=="random"&shp$available.locations==15),]
shp_random_30=shp[which(shp$distribution=="random"&shp$available.locations==30),]
shp_random_45=shp[which(shp$distribution=="random"&shp$available.locations==45),]

mean(shp_uniform_15$ticks*.1)
sd(shp_uniform_15$ticks*0.1)
mean(shp_uniform_30$ticks*.1)
sd(shp_uniform_30$ticks*0.1)
mean(shp_uniform_45$ticks*.1)
sd(shp_uniform_45$ticks*0.1)
mean(shp_uniform_15_05$ticks*.1)
sd(shp_uniform_15_05$ticks*0.1)
mean(shp_uniform_30_05$ticks*.1)
sd(shp_uniform_30_05$ticks*0.1)
mean(shp_uniform_45_05$ticks*.1)
sd(shp_uniform_45_05$ticks*0.1)
mean(shp_random_15$ticks*.1)
sd(shp_random_15$ticks*0.1)
mean(shp_random_30$ticks*.1)
sd(shp_random_30$ticks*0.1)
mean(shp_random_45$ticks*.1)
sd(shp_random_45$ticks*0.1)


##t-test uniform 1 & 2
##Proove the influence of service center prevent sprawl:
t.test(shp_uniform$ticks*0.1,shp_uniform_05$ticks*0.1)

##t-test random
#Proove the influence of existing astethic quality on greenbelt preventing sprawl:
t.test(shp_uniform_05$ticks*0.1,shp_random$ticks*0.1)

