###load 2d csv
###experiments without greenbelt influence
twod_all = read.table("ticks_2D_results.csv", sep ="",header=TRUE)
twod_all_without_exp2 = twod_all[which(twod_all$gb.influence=="false"&twod_all$asd==0.5),]
###subset 2d without greenbelt-influence
twod_without_gb<-twod_all_without_exp2[which(twod_all_without_exp2$gb.influence=="false"),]
##g20
twod_g20<-twod_without_gb[which(twod_without_gb$greenbelt.position=="20"),]
##g40
twod_g40<-twod_without_gb[which(twod_without_gb$greenbelt.position=="40"),]
##w1
twod_w1<-twod_without_gb[which(twod_without_gb$greenbelt.width=="1"),]
#w15
twod_w15<-twod_without_gb[which(twod_without_gb$greenbelt.width=="15"),]

#t-test for exp without greenbelt influence (exp3-6)
# independent 2-group t-test g20&g40
t.test(twod_g20$ticks*.1,twod_g40$ticks*.1) # where y1 and y2 are numeric
# independent 2-group t-test w1&w15
t.test(twod_w1$ticks*0.1,twod_w15$ticks*0.1) # where y1 and y2 are numeric


# One Way Anova for experiments 4-6, to see if aq.distribution have an effect
twod_without_gb_without_ex3<-twod_without_gb[which(twod_without_gb$aq=="0.5"&twod_without_gb$asd=="0.5"),]
fit_without_gi_1 <- aov(ticks*.1 ~ aq.distribution, data=twod_without_gb_without_ex3)
summary(fit_without_gi_1)
#tukey 
TukeyHSD(fit_without_gi_1 )


## one way anova for  exp 3,4,5,6  to check relevance of al
twod_without_gb$available.locations=as.character(twod_without_gb$available.locations)
fit_without_gi_2 <- aov(ticks*.1 ~ available.locations, data=twod_without_gb)
summary(fit_without_gi_2)
#tukey
TukeyHSD(fit_without_gi_2)



###experiments with greenbelt influence

twod_gb<-twod_all_without_exp2[which(twod_all_without_exp2$gb.influence=="true"),]
twod_gb_w1<-twod_gb[which(twod_gb$greenbelt.width=="1"),]
twod_gb_w15<-twod_gb[which(twod_gb$greenbelt.width=="15"),]
twod_gb_g20<-twod_gb[which(twod_gb$greenbelt.position=="20"),]
twod_gb_g40<-twod_gb[which(twod_gb$greenbelt.position=="40"),]

# independent 2-group t-test g20&g40 with gb.influence
t.test(twod_gb_g20$ticks*.1,twod_gb_g40$ticks*.1) # where y1 and y2 are numeric
# independent 2-group t-test w1&w15  with gb.influence
t.test(twod_gb_w1$ticks*0.1,twod_gb_w15$ticks*0.1) # where y1 and y2 are numeric



#twod_gb_exp_7<-twod_gb[which(twod_gb$aq.distribution=="random"),]
#twod_gb_exp_8<-twod_gb[which(twod_gb$aq.distribution=="left-high"),]
#twod_gb_exp_9<-twod_gb[which(twod_gb$aq.distribution=="right-high"),]


# One Way Anova for experiments 7-9, to see if aq.distribution have an effect
fit_with_gi_1 <- aov(twod_gb$ticks*.1 ~ twod_gb$aq.distribution, data=twod_gb)
#tukey 
TukeyHSD(fit_with_gi_1)


## one way anova for 2d exp 7,8,9 with greenbelt_influence, to check relevance of al
twod_gb$available.locations=as.character(twod_gb$available.locations)
fit_with_gi_2 <- aov(ticks*.1 ~ available.locations, data=twod_gb)
summary(fit_with_gi_2)
#tukey
TukeyHSD(fit_with_gi_2)



##Proove the influence of better astethic-quality near greenbelt on greenbelt preventing sprawl

twod_all = read.table("ticks_2D_results.csv", sep ="",header=TRUE)
exp2=twod_all[which(twod_all$gb.influence=="false"&twod_all$aq.distribution=="uniform"&twod_all$asd=="0"),]
exp3=twod_all[which(twod_all$gb.influence=="false"&twod_all$aq.distribution=="uniform"&twod_all$asd=="0.5"),]
exp4=twod_all[which(twod_all$gb.influence=="false"&twod_all$aq.distribution=="random"),]
exp5=twod_all[which(twod_all$gb.influence=="false"&twod_all$aq.distribution=="left-high"),]
exp6=twod_all[which(twod_all$gb.influence=="false"&twod_all$aq.distribution=="right-high"),]
exp7=twod_all[which(twod_all$gb.influence=="true"&twod_all$aq.distribution=="random"),]
exp8=twod_all[which(twod_all$gb.influence=="true"&twod_all$aq.distribution=="left-high"),]
exp9=twod_all[which(twod_all$gb.influence=="true"&twod_all$aq.distribution=="right-high"),]

##Proove the influence of better astethic-quality near greenbelt on greenbelt preventing sprawl
#T-test: exp 4,7 
t.test(exp4$ticks*0.1,exp7$ticks*0.1)
#T-test: exp 5,8
t.test(exp5$ticks*0.1,exp8$ticks*0.1)
#T-test: exp 6,9
t.test(exp6$ticks*0.1,exp9$ticks*0.1)

#Proove the influence of existing astethic quality on greenbelt preventing sprawl:
#T-test: exp 3,4
t.test(exp3$ticks*0.1,exp4$ticks*0.1)

#Proove the influence of service center prevent sprawl:
#T-test: exp 2,3
t.test(exp2$ticks*0.1,exp3$ticks*0.1)

  
