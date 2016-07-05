install.packages("xlsx") 
library(xlsx)
hands <- read.xlsx("c:/users/christos/documents/hands.xlsx", sheetIndex=1)
View(hands)

install.packages("devtools")
library(devtools)
install_github("easyGgplot2", "kassambara")

install.packages("ggplot2") 
library(ggplot2) 

install.packages("plyr") 
library(plyr)
install.packages("grid") 
library(grid)
install.packages("easyGgplot2") 
library(easyGgplot2)

library(xlsx)
Air <- read.xlsx("c:/users/christos/documents/Air.xls", sheetIndex=1)
View(Air)
ggplot2.boxplot(data=Air, xName='location', yName='cfu_m3')

Air$location<-factor(Air$location, levels=c("ICU", "Surgery", "Internal medicine", "Neonatal"))
levelProportions<-c(.5)
ggplot2.boxplot(data=Air, xName ='location',yName='cfu_m3', width=0.4) + scale_y_continuous(name=expression(cfu/m^3), limits=c(0, 1500)) + theme(axis.title.x = element_blank(), axis.title.y = element_text(face="plain",colour="black", size=17.5), axis.text.y = element_text(face="plain", colour="black", size=14), axis.text.x  = element_text(face="bold", colour="black", size=16)) + 
  geom_boxplot(line="dotted",width=0.4) + scale_x_discrete(labels=c("ICU", "SW", "MW", "NU"))

library(xlsx)
hands <- read.xlsx("c:/users/christos/documents/hands.xlsx", sheetIndex=1)
View(hands)

hands$location<-factor(hands$location, levels=c("ICU", "Surgery", "Internal medicine", "Neonatal"))
levelProportions<-c(.5)
ggplot2.boxplot(data=hands, xName='location',yName='total', width=0.4) + scale_y_continuous(name=expression(cfu/petri), limits=c(0, 1200)) + theme(axis.title.x = element_blank(), axis.title.y = element_text(face="plain",colour="black", size=17.5), axis.text.y = element_text(face="plain", colour="black", size=14), axis.text.x  = element_text(face="bold", colour="black", size=16)) +
  geom_boxplot(line="dotted",width=0.4) + scale_x_discrete(labels=c("ICU", "SW", "MW", "NU"))

surface <- read.xlsx("c:/users/christos/documents/surface.xlsx", sheetIndex=1)
View(surface)
surface$location<-factor(surface$location, levels=c("ICU", "Surgery", "Internal medicine", "Neonatal"))
levelProportions<-c(.5)
ggplot2.boxplot(data=surface, xName='location',yName='cfu_cm2', width=0.4) + scale_y_continuous(name=expression(cfu/cm^2), limits=c(0, 40)) + theme(axis.title.x = element_blank(), axis.title.y = element_text(face="plain",colour="black", size=17.5), axis.text.y = element_text(face="plain", colour="black", size=14), axis.text.x  = element_text(face="bold", colour="black", size=16)) +
  geom_boxplot(line="dotted",width=0.4) + scale_x_discrete(labels=c("ICU", "SW", "MW", "NU"))

surface$type<-factor(surface$type, levels=c("Medical", "General"))
levelProportions<-c(.5)
ggplot2.boxplot(data=surface, xName='type',yName='cfu_cm2', width=0.4) + scale_y_continuous(name=expression(cfu/cm^2), limits=c(0, 40)) + theme(axis.title.x = element_blank(), axis.title.y = element_text(face="plain",colour="black", size=17.5), axis.text.y = element_text(face="plain", colour="black", size=14), axis.text.x  = element_text(face="bold", colour="black", size=16)) +
  geom_boxplot(line="dotted",width=0.4) 

#doctors vs nurses
ggplot2.boxplot(data=hands, xName='staff',yName='total', width=0.4) + scale_y_continuous(name=expression(cfu/petri), limits=c(0, 1200)) + theme(axis.title.x = element_blank(), axis.title.y = element_text(face="plain",colour="black", size=17.5), axis.text.y = element_text(face="plain", colour="black", size=14), axis.text.x  = element_text(face="bold", colour="black", size=16)) + geom_boxplot(line="dotted",width=0.4)


install.packages("grid")
install.packages("gridExtra")
library(grid)
library(gridExtra)


hands$location<-factor(hands$location, levels=c("ICU", "Surgery", "Internal medicine", "Neonatal"))
levelProportions<-c(.5)
p1<-ggplot2.boxplot(data=hands, xName='location',yName='total', width=0.4) + scale_y_continuous(name=expression(cfu/petri), limits=c(0, 1200)) + theme(axis.title.x = element_blank(), axis.title.y = element_text(face="plain",colour="black", size=16), axis.text.x  = element_text(face="bold", colour="black", size=16), axis.text.y  = element_text(face="plain", colour="black", size=14)) +
  scale_x_discrete(labels=c("ICU", "SW", "MW", "NU")) + geom_boxplot(line="dotted",width=0.4)
p2<-ggplot2.boxplot(data=hands, xName='staff',yName='total', width=0.4) + scale_y_continuous(name=expression(cfu/petri), limits=c(0, 1200)) + theme(axis.title.x = element_blank(), axis.title.y = element_text(face="plain",colour="black", size=16), axis.text.x  = element_text(face="bold", colour="black", size=16), axis.text.y  = element_text(face="plain", colour="black", size=14)) + geom_boxplot(line="dotted",width=0.4)
grid.arrange(p1, p2, ncol=2)

surface <- read.xlsx("c:/users/christos/documents/surface.xlsx", sheetIndex=1)
View(surface)
surface$location<-factor(surface$location, levels=c("ICU", "Surgery", "Internal medicine", "Neonatal"))
levelProportions<-c(.5)
p3<-ggplot2.boxplot(data=surface, xName='location',yName='cfu_cm2', width=0.4) + scale_y_continuous(name=expression(cfu/cm^2), limits=c(0, 40)) + theme(axis.title.x = element_blank(), axis.title.y = element_text(face="plain",colour="black", size=16), axis.text.x = element_text(face="bold", colour="black", size=16), axis.text.y  = element_text(face="plain", colour="black", size=14)) + scale_x_discrete(labels=c("ICU", "SW", "MW", "NU")) +
  geom_boxplot(line="dotted",width=0.4)
surface$type<-factor(surface$type, levels=c("Medical", "General"))
levelProportions<-c(.5)
p4<-ggplot2.boxplot(data=surface, xName='type',yName='cfu_cm2', width=0.4) + scale_y_continuous(name=expression(cfu/cm^2), limits=c(0, 40)) + theme(axis.title.x = element_blank(), axis.title.y = element_text(face="plain",colour="black", size=16), axis.text.x = element_text(face="bold", colour="black", size=16), axis.text.y  = element_text(face="plain", colour="black", size=14)) +
  geom_boxplot(line="dotted",width=0.4)

grid.arrange(p3, p4, ncol=2)
 


