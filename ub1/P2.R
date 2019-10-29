zeiten = scan("bearbzeit.dat")
zeiten
zeiten.sort = sort(zeiten)
zeiten.sort
write.table(zeiten.sort,"bearbzeit_sort.dat",
            row.names = FALSE,col.names =FALSE)
#b

zeiten.min = min(zeiten)
zeiten.max = max(zeiten)
zeiten.mean = mean(zeiten)
zeiten.median = mean(zeiten)
zeiten.quantile = quantile(zeiten)

# c
zeiten.spanweite = zeiten.max - zeiten.min
#zeiten.quartilabstand = zeiten.quantile[4] - zeiten.quantile[2]
zeiten.quartilabstand = IQR(zeiten)

zeiten.stichprobeVarianz = var(zeiten)
zeiten.stichprobeSd = sd(zeiten)