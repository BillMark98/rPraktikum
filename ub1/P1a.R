myData = c(43.50,46.70,51.20,49.50,55.50,60.30,63.50,61.00,59.20,62.30,65.40,67.80)
xdata = c(1:12)
# par(las=1)bewirkt senkrechte Darstellung 
# der Tabelen an der vertikalen Achsen
par(las = 1)
plot(xdata, myData,type = "o",
     main = "Monatliche Durchschnittskurse einer Aktie 
     im Verlauf eines Jahres",ylab = "Kurse(in Euro)",
xlab = "Monate")
library(Hmisc)
minor.tick(nx=2,ny=5)

#points(myData)
# barplot(myData,main = "Monatliche Durchschnittskurse einer Aktie im Verlauf eines Jahres")



myData[1]
