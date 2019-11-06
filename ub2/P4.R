zeiten = scan("~/Desktop/rPraktikum/daten/bearbzeit.dat")
# cex all the fonts 0.9, main(the title) 1.1
par(las = 1,cex = 0.9,cex.main = 1.1)
boxplot(zeiten,border = "blue",main = "Box-Plot der Bearbeitungszeiten 
        zu den Patienten-Daten 
        aus Aufgabe P 2",horizontal = FALSE,ylim = c(60,160))
# how to plot the labels under the 0.25 quartil, just like the plot on the first page 
# of the worksheet?
box.erg = boxplot(zeiten,plot = FALSE)

# the quartile, median is the quartile type = 2, not the same as the default set of the summary
box.erg$stats
box.erg

abline( h = median(zeiten))
abline(h = mean(zeiten),col = "orange")

library(Hmisc)
minor.tick(nx = 5, ny = 2)

# the x_u = min{x_{(i)}| x_{i} >= x_{0.25} - 1.5 Q}
# by calculating we see that all the data lie within the range [x_{0.25} - 1.5Q, x_{0.75} + 1.5Q]
iqr = IQR(zeiten,type = 2)
box.erg$stats[2,1] - iqr
box.erg$stats[4,1] + iqr
range(zeiten)