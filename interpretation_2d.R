###load 2d csv
###experiments without 2dq
twod_all_all = read.table("ticks_2D_results.csv", sep ="",header=TRUE)
twod_all<-twod_all_all[which(twod_all_all$gb.influence=="false"),]
twod_g20<-twod_all[which(twod_all$greenbelt.position=="20"),]
twod_g40<-twod_all[which(twod_all$greenbelt.position=="40"),]
twod_w1<-twod_all[which(twod_all$greenbelt.width=="1"),]
twod_w15<-twod_all[which(twod_all$greenbelt.width=="15"),]
# independent 2-group t-test g20&g40
t.test(twod_g20$ticks*.1,twod_g40$ticks*.1) # where y1 and y2 are numeric
# independent 2-group t-test w1&w15
t.test(twod_w1$ticks*0.1,twod_w15$ticks*0.1) # where y1 and y2 are numeric


###experiments with 2dq

twod_gb<-twod_all_all[which(twod_all_all$gb.influence=="true"),]
twod_gb_w1<-twod_gb[which(twod_gb$greenbelt.width=="1"),]
twod_gb_w15<-twod_gb[which(twod_gb$greenbelt.width=="15"),]
twod_gb_g20<-twod_gb[which(twod_gb$greenbelt.position=="20"),]
twod_gb_g40<-twod_gb[which(twod_gb$greenbelt.position=="40"),]

# independent 2-group t-test g20&g40 with gb.influence
t.test(twod_gb_g20$ticks*.1,twod_gb_g40$ticks*.1) # where y1 and y2 are numeric
# independent 2-group t-test w1&w15  with gb.influence
t.test(twod_gb_w1$ticks*0.1,twod_gb_w15$ticks*0.1) # where y1 and y2 are numeric



twod_gb_exp_7<-twod_gb[which(twod_gb$aq.distribution=="random"),]
twod_gb_exp_8<-twod_gb[which(twod_gb$aq.distribution=="left-high"),]
twod_gb_exp_9<-twod_gb[which(twod_gb$aq.distribution=="right-high"),]


# One Way Anova for experiments 7-9, to see if aq.distribution have an effect
fit1 <- aov(twod_gb$ticks*.1 ~ twod_gb$aq.distribution, data=twod_gb)
#tukey 
TukeyHSD(fit1)


## one way anova for whole set of 2d exp, to check relevance of al
fit <- aov(ticks*.1 ~ available.locations, data=twod_all_all)
twod_all_all$available.locations=as.character(twod_all_all$available.locations)
summary(fit)
#tukey
TukeyHSD(fit)
