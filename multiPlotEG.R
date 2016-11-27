combineNational <-ylong
View(combineNational)
partNames<-rep(2006:2015,each=4)
partNames[41]<-2016
partNames[42]<-2016
partNames[43]<-2016
# - 2013data is repeated, remove the repeated rows
combineNational<-combineNational[-c(33,34,35,36),]
rownames(combineNational)<-combineNational$key
gdpQuarters<-rep(consumption5$GDP,each=4)
combineNational$gdp<-gdpQuarters[1:length(gdpQuarters)-1]
colnames(combineNational)<-c("year","pHouseNISx1k","gdp")
consumptionQuarters<-rep(consumption5$`Household Consumption`,each=4)
combineNational$householdConsumption<-consumptionQuarters[1:length(consumptionQuarters)-1]
combineNational[,4]<-as.numeric(combineNational[,4])
consumptionPlot<-ggplot(data=subset(combineNational,!is.na(gdp)),
                        aes(x=year,
                            y=householdConsumption)
)+geom_point()
gdpPlot        <-ggplot(data=subset(combineNational,!is.na(gdp)),
                        aes(x=year,
                            y=gdp)
)+geom_point()
multiplot(consumptionPlot,gdpPlot)