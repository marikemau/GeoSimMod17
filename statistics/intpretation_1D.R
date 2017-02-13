##interpretation 1d

###load 1d csv
oned = read.table("ticks_1D_results.csv", sep ="",header=TRUE)
oned_g20<-oned[which(oned$greenbelt.position=="20"),]
oned_g40<-oned[which(oned$greenbelt.position=="40"),]
oned_w1<-oned[which(oned$greenbelt.width=="1"),]
oned_w15<-oned[which(oned$greenbelt.width=="15"),]

# independent 2-group t-test g20&g40
t.test(oned_g20$ticks*.1,oned_g40$ticks*.1) # where y1 and y2 are numeric
# independent 2-group t-test w1&w15
t.test(oned_w1$ticks*0.1,oned_w15$ticks*0.1) # where y1 and y2 are numeric



## one way anova for 1d exp, to check relevance of al
oned$available.locations=as.character(oned$available.locations)
fit <- aov(ticks*.1 ~ available.locations, data=oned)
summary(fit)
#tukey
TukeyHSD(fit)