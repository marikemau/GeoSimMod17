##shapefile-results

shp=read.table("ticks_2Dshape_results.csv", sep ="",header=TRUE)
shp_uniform=shp[which(shp$distribution=="uniform"),]
shp_random=shp[which(shp$distribution=="random"),]
twod=read.table("ticks_2D_results.csv", sep ="",header=TRUE)
twod_uniform=twod[which(twod$gb.influence=="false"&twod$aq.distribution=="uniform"&twod$asd=="0"&twod$greenbelt.width=="1"),]
twod_random=twod[which(twod$gb.influence=="false"&twod$aq.distribution=="random"&twod$greenbelt.width=="1"),]


##t-test uniform
t.test(twod_uniform$ticks*.1,shp_uniform$ticks*.1)

##t-test random
t.test(twod_random$ticks*.1,shp_random$ticks*.1)

hist(shp_random$ticks)
hist(shp_uniform$ticks)

