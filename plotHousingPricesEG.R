## regional avg house P.s
qplot(key,value,data=JerusalemAVG,
      ylab="NIS thousand",xlab="2006-2016",
      main="Jerusalem AVG House Price")
qplot(key,value,data=tlvAVG,
      ylab="NIS thousand",xlab="2006-2016",
      main="TLV AVG House Price")
qplot(key, value,
      ylab="NIS thousand",
      xlab="2006-2016",
      data=ylong,main="National AVG House Price")
consumption5$`Household Consumption`
ggplot(data=consumption5, aes(
    x=year,
    y=`Household Consumption`,
    group=1)
)+geom_point()+geom_line()