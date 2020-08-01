Raub = read.csv("/Users/bill/Desktop/rPraktikum/daten/raub.csv",header = TRUE,sep = ";")
# could use csv2
Raub = read.csv2("/Users/bill/Desktop/rPraktikum/daten/raub.csv",header = TRUE)
# default to 500
options(max.print = 100000)
Raub.tab = table(Raub)
head(Raub)
tail(Raub)

Raub.Randvert = addmargins(Raub.tab)
prop.table(Raub.tab,1)


my.odds = function(m) {
    warningMessage = "argument is invalid"
    if(!((class(m) == "matrix") | (class(m) == "table"))){
      stop(warningMessage)
    }
    if(!(nrow(m) == 2)){
      stop(warningMessage)
    }
    if(!(ncol(m)) == 2) {
      stop(warningMessage)
    }
    odds1 = m[1,1]/m[1,2]
    # message("odd1 :",odd1)
    odds2 = m[2,1]/m[2,2]
    # message("odd2: ",odd2)
    y = c(odds1,odds2,odds1/odds2,log(odds1/odds2))
    names(y) = c("odds1","odds2","odds-Ratio","log(odds-Ratio)")
    y
    # or return(y)
}
