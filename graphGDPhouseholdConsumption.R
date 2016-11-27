meltConsGDP<-melt(consumption5,id="year")
ConsGDP<-meltConsGDP[-c(11,22),]
#class(ConsGDP$value[1])
fixConsGDP<-ConsGDP
fixConsGDP$value<-as.numeric(ConsGDP$value)
class(fixConsGDP$value[1])
p3<-ggplot(data=fixConsGDP,
           aes(x=year,
               y=value,
               ylab="2010 Costant USD (hundred billion)",     shape=variable,
              # legend=NULL,
               group=variable)
           )+geom_point()+geom_line()+ggtitle("Israel: GDP, Household Consumption: 2006-2015")+labs(subtitle="Hundred Billion USD")
p3+ylab(NULL)