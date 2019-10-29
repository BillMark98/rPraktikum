zeiten = scan("../bearbzeit.dat")
par(las = 1)
boxplot(zeiten,border = "blue",main = "Box-Plot der Bearbeitungszeiten 
        zu den Patienten-Daten 
        aus Aufgabe P 2",horizontal = TRUE)
# how to plot the labels under the 0.25 quartil, just like the plot on the first page 
# of the worksheet?
box.erg = boxplot(zeiten,plot = FALSE)

box.erg$stats