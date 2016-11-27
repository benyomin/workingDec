dates <-yearqtr(2006+seq(0,42)/4)

#dates
locations <- c("Total", "Jerusalem", "Tel Aviv", "Haifa", "Gush Dan", "Center and Jerusalem Periphery towns", "South", "Sharon",
               "North", "Qrayot Haifa")
rooms<-c("average","1.5-2 rooms","2.5-3 rooms", "3.5-4 rooms","4.5-5 rooms")
repLocations<-rep(locations, each=5)
rows <-paste(repLocations, rooms)
require(xlsx)
P06_07<-read.xlsx("houseP06_07.xls", sheetIndex=1,startRow=6,endRow = 56)
P08_09<-read.xlsx("houseP08_09.xls", sheetIndex=1,startRow=6,endRow = 56)
P10_11<-read.xlsx("houseP10_11.xls", sheetIndex=1,startRow=6,endRow = 56)
P12_13<-read.xlsx("houseP12_13.xls", sheetIndex=1,startRow=6,endRow = 56)
P14<-read.xlsx("houseP14q1-2.xls", sheetIndex=1,startRow=6,endRow = 56)
P14<-P14[,-7] ##remove annual average
P15_16<-read.xlsx("houseP14_16.xls", sheetIndex=1,startRow=6,endRow = 56)
m <-matrix(0, ncol=43, nrow=50)
colnames(m)<-dates
rownames(m)<-rows
colNames14 <- c("id","Total",dates[29:36])
colnames(P14)<-colNames14
P15_16<-P15_16[,-c(3,4,9)]
colNames15 <- c("id","Total",dates[37:43])
colnames(P15_16)<-colNames15
colNames12_13 <- c("id","Total",dates[25:32])
colNames10_11 <- c("id","Total",dates[17:24])
colNames08_09 <- c("id","Total",dates[09:16])
colNames07_08 <- c("id","Total",dates[5:12])
colNames06_07 <- c("id","Total",dates[1:8])
P12_13<-P12_13[,-7]
colnames(P12_13)<-colNames12_13
P10_11<-P10_11[,-7]
colnames(P10_11)<-colNames10_11
P08_09<-P08_09[,-7]
colnames(P08_09)<-colNames08_09
P06_07<-P06_07[,-7]
colnames(P06_07)<-colNames06_07
## remove id columns except before 2006
p06_07<-P06_07
p08_09<-P08_09[,-c(1,2)]
p10_11<-P10_11[,-c(1,2)]
p12_13<-P12_13[,-c(1,2)]
p14<-   P14[,-c(1,2)]
p15_16<-P15_16[,-c(1,2)]
prices<-cbind(p06_07,p08_09,p10_11,p12_13,p14,p15_16)


