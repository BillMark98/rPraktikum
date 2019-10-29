groessen = read.table("../daten/koerpergroessen.dat",header = TRUE)


# how to modify the range of the xaxis?

boxplot(groessen$Groesse, main = "Box-Plot saemtlicher gemessener Koerpergroessen 
von 10 Frauen und 10 Maennern",horizontal = TRUE, xlab = "Groesse(in cm)")


gr.w = groessen[groessen[,1] == "w",]
gr.m = groessen[groessen[,1] == "m",]

# what's the meaning of the spot at the Frauen boxplot?
boxplot(gr.w[,2],gr.m[,2],ylab="Groesse (in cm)",
        border=c("blue","red"),names=c("Frauen","Maenner"),
        main="Box-Plots der Koerpergroessen 
        von 10 Frauen und 10 Maennern")
