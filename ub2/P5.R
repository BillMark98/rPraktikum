# if header = FALSE (default)
# thenn R will give the groessen two names and 
# will treat the original header "Geschlecht", "koeper.." as data in the groessen variable
groessen = read.table("~/Desktop/rPraktikum/daten/koerpergroessen.dat",header = TRUE)

# m < w  lexicographic sorting the geschlecht
groessen.sort = groessen[order(groessen[,"Geschlecht"]),]
# first sort after geschlecht, then height
groessen.sort2 = groessen[order(groessen[,"Geschlecht"],groessen[,"Groesse"]),]

groessen[,"Geschlecht" == m]
groessen.sort = sort(groessen[grossen["Geschlect" == "m",]])
v1 = groessen["Geschlect" == "m"]
# how to modify the range of the xaxis?

boxplot(groessen$Groesse, main = "Box-Plot saemtlicher gemessener Koerpergroessen 
von 10 Frauen und 10 Maennern",horizontal = TRUE, xlab = "Groesse(in cm)")

# " "  not ' '
wvec = groessen[groessen[,"Geschlecht"] == "w",]
gr.w = groessen[groessen[,1] == "w",]
gr.m = groessen[groessen[,1] == "m",]

# what's the meaning of the spot at the Frauen boxplot?
boxplot(gr.w[,2],gr.m[,2],ylab="Groesse (in cm)",
        border=c("blue","red"),names=c("Frauen","Maenner"),
        main="Box-Plots der Koerpergroessen 
        von 10 Frauen und 10 Maennern")

box.erg = boxplot(gr.w[,2],gr.m[,2],plot= FALSE)
box.erg$stats
range(gr.w$Groesse)
sort(gr.w[,2])

minor.tick(ny = 10)
