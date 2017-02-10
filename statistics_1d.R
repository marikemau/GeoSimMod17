
###load 1d csv
oned = read.table("ticks_1D_results.csv", sep ="",header=TRUE)
##subset csv into six runs with different parameters (w=greenbelt-width,g=greenbelt-location,al=available locations)
oned_w1_g20_al5 <-oned[which(oned$greenbelt.width=="1"&oned$greenbelt.position=="20"&oned$available.locations=="5"),]
oned_w1_g20_al15<-oned[which(oned$greenbelt.width=="1"&oned$greenbelt.position=="20"&oned$available.locations=="15"),]
oned_w1_g20_al25<-oned[which(oned$greenbelt.width=="1"&oned$greenbelt.position=="20"&oned$available.locations=="25"),]
oned_w1_g40_al5<-oned[which(oned$greenbelt.width=="1"&oned$greenbelt.position=="40"&oned$available.locations=="5"),]
oned_w1_g40_al15<-oned[which(oned$greenbelt.width=="1"&oned$greenbelt.position=="40"&oned$available.locations=="15"),]
oned_w1_g40_al25<-oned[which(oned$greenbelt.width=="1"&oned$greenbelt.position=="40"&oned$available.locations=="25"),]
oned_w15_g20_al5<-oned[which(oned$greenbelt.width=="15"&oned$greenbelt.position=="20"&oned$available.locations=="5"),]
oned_w15_g20_al15<- oned[which(oned$greenbelt.width=="15"&oned$greenbelt.position=="20"&oned$available.locations=="15"),]
oned_w15_g20_al25<-oned[which(oned$greenbelt.width=="15"&oned$greenbelt.position=="20"&oned$available.locations=="25"),]
oned_w15_g40_al5<-oned[which(oned$greenbelt.width=="15"&oned$greenbelt.position=="40"&oned$available.locations=="5"),]
oned_w15_g40_al15<-oned[which(oned$greenbelt.width=="15"&oned$greenbelt.position=="40"&oned$available.locations=="15"),]
oned_w15_g40_al25<-oned[which(oned$greenbelt.width=="15"&oned$greenbelt.position=="40"&oned$available.locations=="25"),]


##calculation of mean and sd for every run

#mean and sd of w1 g20
mean_w1_g20=c(mean(oned_w1_g20_al5$ticks),mean(oned_w1_g20_al15$ticks),mean(oned_w1_g20_al25$ticks))
sd_w1_g20=c(sd(oned_w1_g20_al5$ticks),sd(oned_w1_g20_al15$ticks),sd(oned_w1_g20_al25$ticks))
#mean and sd of w1 g40
mean_w1_g40=c(mean(oned_w1_g40_al5$ticks),mean(oned_w1_g40_al15$ticks),mean(oned_w1_g40_al25$ticks))
sd_w1_g40=c(sd(oned_w1_g40_al5$ticks),sd(oned_w1_g40_al15$ticks),sd(oned_w1_g40_al25$ticks))

#mean and sd of w15 g20
mean_w15_g20=c(mean(oned_w15_g20_al5$ticks),mean(oned_w15_g20_al15$ticks),mean(oned_w15_g20_al25$ticks))
sd_w15_g20=c(sd(oned_w15_g20_al5$ticks),sd(oned_w15_g20_al15$ticks),sd(oned_w15_g20_al25$ticks))

#mean and sd of w15 g40
mean_w15_g40=c(mean(oned_w15_g40_al5$ticks),mean(oned_w15_g40_al15$ticks),mean(oned_w15_g40_al25$ticks))
sd_w15_g40=c(sd(oned_w15_g40_al5$ticks),sd(oned_w15_g40_al15$ticks),sd(oned_w15_g40_al25$ticks))

##bind them in a list
st_=cbind(mean_w1_g20,sd_w1_g20,mean_w1_g40,sd_w1_g40,mean_w15_g20,sd_w15_g20,mean_w15_g40,sd_w15_g40)


