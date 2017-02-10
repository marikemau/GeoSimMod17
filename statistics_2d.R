
###load 2d csv
twod_all = read.table("ticks_2D_results.csv", sep ="",header=TRUE)
###experiment 2 with asd=0 and aq.distribution = uniform
twod<-twod_all[which(twod_all$asd=="0.5"&twod_all$aq.distribution=="random"),]
##subset csv into six runs with different parameters (w=greenbelt-width,g=greenbelt-location,al=available locations)
twod_w1_g20_al15 <-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="20"&twod$available.locations=="15"),]
twod_w1_g20_al30<-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="20"&twod$available.locations=="30"),]
twod_w1_g20_al45<-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="20"&twod$available.locations=="45"),]
twod_w1_g40_al15<-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="40"&twod$available.locations=="15"),]
twod_w1_g40_al30<-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="40"&twod$available.locations=="30"),]
twod_w1_g40_al45<-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="40"&twod$available.locations=="45"),]
twod_w15_g20_al15<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="20"&twod$available.locations=="15"),]
twod_w15_g20_al30<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="20"&twod$available.locations=="30"),]
twod_w15_g20_al45<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="20"&twod$available.locations=="45"),]
twod_w15_g40_al15<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="40"&twod$available.locations=="15"),]
twod_w15_g40_al30<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="40"&twod$available.locations=="30"),]
twod_w15_g40_al45<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="40"&twod$available.locations=="45"),]


##calculation of mean and sd for every run

#mean and sd of w1 g20
mean_w1_g20=c(mean(twod_w1_g20_al15$ticks),mean(twod_w1_g20_al30$ticks),mean(twod_w1_g20_al45$ticks))
sd_w1_g20=c(sd(twod_w1_g20_al15$ticks),sd(twod_w1_g20_al30$ticks),sd(twod_w1_g20_al45$ticks))
#mean and sd of w1 g40
mean_w1_g40=c(mean(twod_w1_g40_al15$ticks),mean(twod_w1_g40_al30$ticks),mean(twod_w1_g40_al45$ticks))
sd_w1_g40=c(sd(twod_w1_g40_al15$ticks),sd(twod_w1_g40_al30$ticks),sd(twod_w1_g40_al45$ticks))

#mean and sd of w15 g20
mean_w15_g20=c(mean(twod_w15_g20_al15$ticks),mean(twod_w15_g20_al30$ticks),mean(twod_w15_g20_al45$ticks))
sd_w15_g20=c(sd(twod_w15_g20_al15$ticks),sd(twod_w15_g20_al30$ticks),sd(twod_w15_g20_al45$ticks))

#mean and sd of w15 g40
mean_w15_g40=c(mean(twod_w15_g40_al15$ticks),mean(twod_w15_g40_al30$ticks),mean(twod_w15_g40_al45$ticks))
sd_w15_g40=c(sd(twod_w15_g40_al15$ticks),sd(twod_w15_g40_al30$ticks),sd(twod_w15_g40_al45$ticks))

##bind them in a list
st_=cbind(mean_w1_g20,sd_w1_g20,mean_w1_g40,sd_w1_g40,mean_w15_g20,sd_w15_g20,mean_w15_g40,sd_w15_g40)
st_
##to get 10 resident per tick ()
st_*0.1
st_


##experiment 3
###experiment 3 with asd=0.5 and aq.distribution = uniform
twod<-twod_all[which(twod_all$asd=="0.5"&twod_all$aq.distribution=="uniform"),]
##subset csv into six runs with different parameters (w=greenbelt-width,g=greenbelt-location,al=available locations)
twod_w1_g20_al15 <-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="20"&twod$available.locations=="15"),]
twod_w1_g20_al30<-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="20"&twod$available.locations=="30"),]
twod_w1_g20_al45<-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="20"&twod$available.locations=="45"),]
twod_w1_g40_al15<-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="40"&twod$available.locations=="15"),]
twod_w1_g40_al30<-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="40"&twod$available.locations=="30"),]
twod_w1_g40_al45<-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="40"&twod$available.locations=="45"),]
twod_w15_g20_al15<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="20"&twod$available.locations=="15"),]
twod_w15_g20_al30<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="20"&twod$available.locations=="30"),]
twod_w15_g20_al45<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="20"&twod$available.locations=="45"),]
twod_w15_g40_al15<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="40"&twod$available.locations=="15"),]
twod_w15_g40_al30<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="40"&twod$available.locations=="30"),]
twod_w15_g40_al45<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="40"&twod$available.locations=="45"),]


##calculation of mean and sd for every run

#mean and sd of w1 g20
mean_w1_g20=c(mean(twod_w1_g20_al15$ticks),mean(twod_w1_g20_al30$ticks),mean(twod_w1_g20_al45$ticks))
sd_w1_g20=c(sd(twod_w1_g20_al15$ticks),sd(twod_w1_g20_al30$ticks),sd(twod_w1_g20_al45$ticks))
#mean and sd of w1 g40
mean_w1_g40=c(mean(twod_w1_g40_al15$ticks),mean(twod_w1_g40_al30$ticks),mean(twod_w1_g40_al45$ticks))
sd_w1_g40=c(sd(twod_w1_g40_al15$ticks),sd(twod_w1_g40_al30$ticks),sd(twod_w1_g40_al45$ticks))

#mean and sd of w15 g20
mean_w15_g20=c(mean(twod_w15_g20_al15$ticks),mean(twod_w15_g20_al30$ticks),mean(twod_w15_g20_al45$ticks))
sd_w15_g20=c(sd(twod_w15_g20_al15$ticks),sd(twod_w15_g20_al30$ticks),sd(twod_w15_g20_al45$ticks))

#mean and sd of w15 g40
mean_w15_g40=c(mean(twod_w15_g40_al15$ticks),mean(twod_w15_g40_al30$ticks),mean(twod_w15_g40_al45$ticks))
sd_w15_g40=c(sd(twod_w15_g40_al15$ticks),sd(twod_w15_g40_al30$ticks),sd(twod_w15_g40_al45$ticks))

##bind them in a list
st_=cbind(mean_w1_g20,sd_w1_g20,mean_w1_g40,sd_w1_g40,mean_w15_g20,sd_w15_g20,mean_w15_g40,sd_w15_g40)
st_
##to get 10 resident per tick ()
st_*0.1

##experiment 4
twod_all = read.table("ticks_2D_results.csv", sep ="",header=TRUE)
###experiment 4 with asd=0.5, aq=05 and aq.distribution = random
twod<-twod_all[which(twod_all$asd=="0.5"&twod_all$aq.distribution=="random"),]
##subset csv into six runs with different parameters (w=greenbelt-width,g=greenbelt-location,al=available locations)
twod_w1_g20_al15 <-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="20"&twod$available.locations=="15"),]
twod_w1_g20_al30<-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="20"&twod$available.locations=="30"),]
twod_w1_g20_al45<-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="20"&twod$available.locations=="45"),]
twod_w1_g40_al15<-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="40"&twod$available.locations=="15"),]
twod_w1_g40_al30<-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="40"&twod$available.locations=="30"),]
twod_w1_g40_al45<-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="40"&twod$available.locations=="45"),]
twod_w15_g20_al15<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="20"&twod$available.locations=="15"),]
twod_w15_g20_al30<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="20"&twod$available.locations=="30"),]
twod_w15_g20_al45<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="20"&twod$available.locations=="45"),]
twod_w15_g40_al15<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="40"&twod$available.locations=="15"),]
twod_w15_g40_al30<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="40"&twod$available.locations=="30"),]
twod_w15_g40_al45<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="40"&twod$available.locations=="45"),]


##calculation of mean and sd for every run

#mean and sd of w1 g20
mean_w1_g20=c(mean(twod_w1_g20_al15$ticks),mean(twod_w1_g20_al30$ticks),mean(twod_w1_g20_al45$ticks))
sd_w1_g20=c(sd(twod_w1_g20_al15$ticks),sd(twod_w1_g20_al30$ticks),sd(twod_w1_g20_al45$ticks))
#mean and sd of w1 g40
mean_w1_g40=c(mean(twod_w1_g40_al15$ticks),mean(twod_w1_g40_al30$ticks),mean(twod_w1_g40_al45$ticks))
sd_w1_g40=c(sd(twod_w1_g40_al15$ticks),sd(twod_w1_g40_al30$ticks),sd(twod_w1_g40_al45$ticks))

#mean and sd of w15 g20
mean_w15_g20=c(mean(twod_w15_g20_al15$ticks),mean(twod_w15_g20_al30$ticks),mean(twod_w15_g20_al45$ticks))
sd_w15_g20=c(sd(twod_w15_g20_al15$ticks),sd(twod_w15_g20_al30$ticks),sd(twod_w15_g20_al45$ticks))

#mean and sd of w15 g40
mean_w15_g40=c(mean(twod_w15_g40_al15$ticks),mean(twod_w15_g40_al30$ticks),mean(twod_w15_g40_al45$ticks))
sd_w15_g40=c(sd(twod_w15_g40_al15$ticks),sd(twod_w15_g40_al30$ticks),sd(twod_w15_g40_al45$ticks))

##bind them in a list
st_=cbind(mean_w1_g20,sd_w1_g20,mean_w1_g40,sd_w1_g40,mean_w15_g20,sd_w15_g20,mean_w15_g40,sd_w15_g40)
st_
##to get 10 resident per tick ()
st_*0.1

#experiment 5

twod_all = read.table("ticks_2D_results.csv", sep ="",header=TRUE)
###experiment 5 with asd=0.5, aq=0.5 and aq.distribution = left high
twod<-twod_all[which(twod_all$asd=="0.5"&twod_all$aq.distribution=="left-high"),]
##subset csv into six runs with different parameters (w=greenbelt-width,g=greenbelt-location,al=available locations)
twod_w1_g20_al15 <-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="20"&twod$available.locations=="15"),]
twod_w1_g20_al30<-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="20"&twod$available.locations=="30"),]
twod_w1_g20_al45<-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="20"&twod$available.locations=="45"),]
twod_w1_g40_al15<-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="40"&twod$available.locations=="15"),]
twod_w1_g40_al30<-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="40"&twod$available.locations=="30"),]
twod_w1_g40_al45<-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="40"&twod$available.locations=="45"),]
twod_w15_g20_al15<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="20"&twod$available.locations=="15"),]
twod_w15_g20_al30<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="20"&twod$available.locations=="30"),]
twod_w15_g20_al45<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="20"&twod$available.locations=="45"),]
twod_w15_g40_al15<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="40"&twod$available.locations=="15"),]
twod_w15_g40_al30<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="40"&twod$available.locations=="30"),]
twod_w15_g40_al45<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="40"&twod$available.locations=="45"),]


##calculation of mean and sd for every run

#mean and sd of w1 g20
mean_w1_g20=c(mean(twod_w1_g20_al15$ticks),mean(twod_w1_g20_al30$ticks),mean(twod_w1_g20_al45$ticks))
sd_w1_g20=c(sd(twod_w1_g20_al15$ticks),sd(twod_w1_g20_al30$ticks),sd(twod_w1_g20_al45$ticks))
#mean and sd of w1 g40
mean_w1_g40=c(mean(twod_w1_g40_al15$ticks),mean(twod_w1_g40_al30$ticks),mean(twod_w1_g40_al45$ticks))
sd_w1_g40=c(sd(twod_w1_g40_al15$ticks),sd(twod_w1_g40_al30$ticks),sd(twod_w1_g40_al45$ticks))

#mean and sd of w15 g20
mean_w15_g20=c(mean(twod_w15_g20_al15$ticks),mean(twod_w15_g20_al30$ticks),mean(twod_w15_g20_al45$ticks))
sd_w15_g20=c(sd(twod_w15_g20_al15$ticks),sd(twod_w15_g20_al30$ticks),sd(twod_w15_g20_al45$ticks))

#mean and sd of w15 g40
mean_w15_g40=c(mean(twod_w15_g40_al15$ticks),mean(twod_w15_g40_al30$ticks),mean(twod_w15_g40_al45$ticks))
sd_w15_g40=c(sd(twod_w15_g40_al15$ticks),sd(twod_w15_g40_al30$ticks),sd(twod_w15_g40_al45$ticks))

##bind them in a list
st_=cbind(mean_w1_g20,sd_w1_g20,mean_w1_g40,sd_w1_g40,mean_w15_g20,sd_w15_g20,mean_w15_g40,sd_w15_g40)
st_
##to get 10 resident per tick ()
st_*0.1

#experiment 6

twod_all = read.table("ticks_2D_results.csv", sep ="",header=TRUE)
###experiment 6 with asd=0.5, aq=0.5 and aq.distribution = right high
twod<-twod_all[which(twod_all$asd=="0.5"&twod_all$aq.distribution=="right-high"&twod_all$gb.influence=="false"),]
##subset csv into six runs with different parameters (w=greenbelt-width,g=greenbelt-location,al=available locations)
twod_w1_g20_al15 <-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="20"&twod$available.locations=="15"),]
twod_w1_g20_al30<-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="20"&twod$available.locations=="30"),]
twod_w1_g20_al45<-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="20"&twod$available.locations=="45"),]
twod_w1_g40_al15<-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="40"&twod$available.locations=="15"),]
twod_w1_g40_al30<-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="40"&twod$available.locations=="30"),]
twod_w1_g40_al45<-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="40"&twod$available.locations=="45"),]
twod_w15_g20_al15<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="20"&twod$available.locations=="15"),]
twod_w15_g20_al30<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="20"&twod$available.locations=="30"),]
twod_w15_g20_al45<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="20"&twod$available.locations=="45"),]
twod_w15_g40_al15<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="40"&twod$available.locations=="15"),]
twod_w15_g40_al30<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="40"&twod$available.locations=="30"),]
twod_w15_g40_al45<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="40"&twod$available.locations=="45"),]


##calculation of mean and sd for every run

#mean and sd of w1 g20
mean_w1_g20=c(mean(twod_w1_g20_al15$ticks),mean(twod_w1_g20_al30$ticks),mean(twod_w1_g20_al45$ticks))
sd_w1_g20=c(sd(twod_w1_g20_al15$ticks),sd(twod_w1_g20_al30$ticks),sd(twod_w1_g20_al45$ticks))
#mean and sd of w1 g40
mean_w1_g40=c(mean(twod_w1_g40_al15$ticks),mean(twod_w1_g40_al30$ticks),mean(twod_w1_g40_al45$ticks))
sd_w1_g40=c(sd(twod_w1_g40_al15$ticks),sd(twod_w1_g40_al30$ticks),sd(twod_w1_g40_al45$ticks))

#mean and sd of w15 g20
mean_w15_g20=c(mean(twod_w15_g20_al15$ticks),mean(twod_w15_g20_al30$ticks),mean(twod_w15_g20_al45$ticks))
sd_w15_g20=c(sd(twod_w15_g20_al15$ticks),sd(twod_w15_g20_al30$ticks),sd(twod_w15_g20_al45$ticks))

#mean and sd of w15 g40
mean_w15_g40=c(mean(twod_w15_g40_al15$ticks),mean(twod_w15_g40_al30$ticks),mean(twod_w15_g40_al45$ticks))
sd_w15_g40=c(sd(twod_w15_g40_al15$ticks),sd(twod_w15_g40_al30$ticks),sd(twod_w15_g40_al45$ticks))

##bind them in a list
st_=cbind(mean_w1_g20,sd_w1_g20,mean_w1_g40,sd_w1_g40,mean_w15_g20,sd_w15_g20,mean_w15_g40,sd_w15_g40)
st_
##to get 10 resident per tick ()
st_*0.1

#experiment 6

twod_all = read.table("ticks_2D_results.csv", sep ="",header=TRUE)
###experiment 6 with asd=0.5, aq=0.5 and aq.distribution = random , gb_influnce=true
twod<-twod_all[which(twod_all$asd=="0.5"&twod_all$aq.distribution=="random"&twod_all$gb.influence=="true"),]
##subset csv into six runs with different parameters (w=greenbelt-width,g=greenbelt-location,al=available locations)
twod_w1_g20_al15 <-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="20"&twod$available.locations=="15"),]
twod_w1_g20_al30<-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="20"&twod$available.locations=="30"),]
twod_w1_g20_al45<-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="20"&twod$available.locations=="45"),]
twod_w1_g40_al15<-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="40"&twod$available.locations=="15"),]
twod_w1_g40_al30<-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="40"&twod$available.locations=="30"),]
twod_w1_g40_al45<-twod[which(twod$greenbelt.width=="1"&twod$greenbelt.position=="40"&twod$available.locations=="45"),]
twod_w15_g20_al15<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="20"&twod$available.locations=="15"),]
twod_w15_g20_al30<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="20"&twod$available.locations=="30"),]
twod_w15_g20_al45<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="20"&twod$available.locations=="45"),]
twod_w15_g40_al15<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="40"&twod$available.locations=="15"),]
twod_w15_g40_al30<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="40"&twod$available.locations=="30"),]
twod_w15_g40_al45<-twod[which(twod$greenbelt.width=="15"&twod$greenbelt.position=="40"&twod$available.locations=="45"),]


##calculation of mean and sd for every run

#mean and sd of w1 g20
mean_w1_g20=c(mean(twod_w1_g20_al15$ticks),mean(twod_w1_g20_al30$ticks),mean(twod_w1_g20_al45$ticks))
sd_w1_g20=c(sd(twod_w1_g20_al15$ticks),sd(twod_w1_g20_al30$ticks),sd(twod_w1_g20_al45$ticks))
#mean and sd of w1 g40
mean_w1_g40=c(mean(twod_w1_g40_al15$ticks),mean(twod_w1_g40_al30$ticks),mean(twod_w1_g40_al45$ticks))
sd_w1_g40=c(sd(twod_w1_g40_al15$ticks),sd(twod_w1_g40_al30$ticks),sd(twod_w1_g40_al45$ticks))

#mean and sd of w15 g20
mean_w15_g20=c(mean(twod_w15_g20_al15$ticks),mean(twod_w15_g20_al30$ticks),mean(twod_w15_g20_al45$ticks))
sd_w15_g20=c(sd(twod_w15_g20_al15$ticks),sd(twod_w15_g20_al30$ticks),sd(twod_w15_g20_al45$ticks))

#mean and sd of w15 g40
mean_w15_g40=c(mean(twod_w15_g40_al15$ticks),mean(twod_w15_g40_al30$ticks),mean(twod_w15_g40_al45$ticks))
sd_w15_g40=c(sd(twod_w15_g40_al15$ticks),sd(twod_w15_g40_al30$ticks),sd(twod_w15_g40_al45$ticks))

##bind them in a list
st_=cbind(mean_w1_g20,sd_w1_g20,mean_w1_g40,sd_w1_g40,mean_w15_g20,sd_w15_g20,mean_w15_g40,sd_w15_g40)
st_
##to get 10 resident per tick ()
st_*0.1

