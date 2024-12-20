Titanic<-read.csv("titanic (1).csv")
#datacoversion
Titanic$sex<-as.factor(Titanic$sex)
Titanic$pclass<-as.factor(Titanic$pclass)
Titanic$survived<-as.factor(Titanic$survived)
Titanic$embarked<-as.factor(Titanic$embarked)

prop.table(table(Titanic$survived))
library(ggplot2)

ggplot(Titanic,aes(x=survived))+theme_classic()+geom_bar()+labs(y="Passenger count", title = "Titanic survival count")
ggplot(Titanic,aes(x=sex, fill=survived))+theme_light()+geom_bar()+labs(y="Passenger count",title = "Titanic survival count")

#plot on class
ggplot(Titanic,aes(x=pclass, fill=survived))+theme_dark()+geom_bar()+labs(y="Passenger count", title = "Titanic survival count by class")
#class and gender
ggplot(Titanic,aes(x=sex, fill=survived))+theme_dark()+facet_grid(~pclass)+geom_bar()+labs(y="Passenger count", title = "Titanic survival count based on gender and class")

#pie chart
ggplot(Titanic, aes(x="", fill=survived))+geom_bar(position = "fill")+facet_grid(~pclass)+coord_polar(theta = "y")

#plot for age
ggplot(Titanic, aes(x=age))+theme_classic()+geom_histogram(binwidth = 5)+labs(y="Passenger count", x="AGE", title = "Titanice survival count by age")

#boxplot
ggplot(Titanic, aes(x=survived, y=age))+theme_bw()+geom_boxplot()+labs(y="AGE", x="survived", title = "Titanice survival count by age")

#plot for age histogram with death ratio
ggplot(Titanic, aes(x=age, fill=survived))+theme_classic()+geom_histogram(binwidth = 5)+labs(y="Passenger count", x="AGE", title = "Titanic survival count by age")

#plot for age density with death ratio
ggplot(Titanic,aes(x=age , fill= survived))+theme_dark()+facet_wrap(sex~pclass)+geom_density(alpha=0.5)+labs(y="age",x="survived",title = "Titanic survival rate by age class and gender")