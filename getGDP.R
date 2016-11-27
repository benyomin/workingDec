importGDP<-read_csv("gdp_consumption.csv")
importGDP[5,]<-c("year","year","year","year",2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016)
gdp<-importGDP[-c(2,3,4,6,7),-c(2,3,4)] #subset [rows,columns]
gdp[1,16]<-NA # add NA for incomplete year
consumption<-importGDP[-c(1,2,3,6,7), -c(2,3,4)]
consumption[1,16]<-NA # add NA for incomplete year
consumption2<-consumption[-c(3,4),]
consumption3<-consumption2[1,]
consumption4<-gather(consumption3)[-1,]
colnames(consumption4)<-c("year","Household Consumption")
consumption4$year<-seq(from=2002, to=2016)
consumption5<-consumption4[-c(1,2,3,4),]
consumption5$GDP<-0
gdp2<-gather(gdp[1,-1])
consumption5$GDP<-gdp2$value[5:15]
