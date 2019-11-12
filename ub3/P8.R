Raub = read.csv("raub.csv",header = TRUE,sep = ";")
Raub.tab = table(Raub)
Raub.Randvert = addmargins(Raub.tab)
prop.table(Raub.tab,1)


my.odds = function(m) {
    odds1 = m[1,1]/m[1,2]
    # message("odd1 :",odd1)
    odds2 = m[2,1]/m[2,2]
    # message("odd2: ",odd2)
    y = c(odds1,odds2,odds1/odds2,log(odds1/odds2))
    names(y) = c("odds1","odds2","odds-Ratio","log(odds-Ratio)")
    y
}