#a
zeiten = scan("../daten/bearbzeit.dat")
hist(zeiten,breaks = seq(60,150,by = 10),ylim = c(0,20),xlim = c(60,150),xlab = "Bearbeitungszeiten (in s)",
     ylab = "Absolute Klassenhaeufigkeiten", main = "Histogramm der Bearbeitungszeiten zu den 
     Patienten- Daten aus Aufgabe P 2")
# modify the x axises
v1 = seq(60,150,by = 10)
v2 = as.character(v1)
axis(side = 1,
     at = v1,
     labels = v2,
     tck = -.05)

aDist.data = hist(zeiten, breaks = v1)
aDist.data$counts
aDist.data$density

# b fehlt

#c
breakInterval = c(60,80,90,100,seq(100,120,by = 5),130,150)
# how did the hist know that here is relative frequency
hist(zeiten,breaks = breakInterval,ylim = c(0,0.025),xlab = "Bearbeitungszeiten (in s)",
     ylab = "Zugehoerige Hoehen", main = "Histogramm der Bearbeitungszeiten zu den 
     Patienten- Daten aus Aufgabe P 2
     (Klasseneinteilung mit nicht-aequidistanten Klassen)")
naDist.data = hist(zeiten,breaks = breakInterval, plot = FALSE)
naDist.data$counts
naDist.data$density
w1 = breakInterval
w2 = as.character(w1)
axis(side = 1,
     at = w1,
     labels = w2,
     tck = -.05)

#d
stem(zeiten)
stem(sort(zeiten))
