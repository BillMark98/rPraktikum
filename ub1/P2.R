zeiten = scan("/Users/bill/Desktop/rPraktikum/daten/bearbzeit.dat")
zeiten
zeiten.sort = sort(zeiten)
zeiten.sort
write.table(zeiten.sort,"bearbzeit_sort.dat",
            row.names = FALSE,col.names =FALSE)
#b

zeiten.min = min(zeiten)
zeiten.max = max(zeiten)
zeiten.mean = mean(zeiten)
zeiten.median = median(zeiten)
zeiten.quantile = quantile(zeiten)

kenngr.1 = summary(zeiten)
kenngr.1
# the default is type = 1
quantile(zeiten, prob = 0.25)
quantile(zeiten, prob = 0.75)

# the definition of the quantiles in the Vorlesung uses type = 2
quantile(zeiten, prob = 0.25,type = 2)
quantile(zeiten, prob = 0.75, type = 2)
# c
zeiten.spanweite = zeiten.max - zeiten.min
#zeiten.quartilabstand = zeiten.quantile[4] - zeiten.quantile[2]
zeiten.quartilabstand = IQR(zeiten)

zeiten.stichprobeVarianz = var(zeiten)
zeiten.stichprobeSd = sd(zeiten)
# note that vector - double is to view as vector - double * ones(length(vector))
sum((zeiten - mean(zeiten))^2)/89
sqrt(.Last.value)