# if header = FALSE (default)
# thenn R will give the groessen two names and 
# will treat the original header "Geschlecht", "koeper.." as data in the groessen variable
groessen = read.table("~/Desktop/rPraktikum/daten/koerpergroessen.dat",header = TRUE)

# m < w  lexicographic sorting the geschlecht
groessen.sort = groessen[order(groessen[,"Geschlecht"]),]
# first sort after geschlecht, then height
# note that we can also use groessen$Geschlect instead of groessenn[,"Geschlecht"]
groessen.sort2 = groessen[order(groessen[,"Geschlecht"],groessen[,"Groesse"]),]
# order () returns a vector of integers
v = order(groessen$Geschlecht)

# the following does not work
groessen["Geschlecht" == "m",]

# this works
groessen$Geschlecht == "m"
# which is equivalent to
groessen[,"Geschlecht"] == "m"

# factor
# here is a link to factor https://www.stat.berkeley.edu/~s133/factors.html
lets = sample(letters,size=20,replace=TRUE)
flets = factor(lets)
# table will list out the absolute frequency of all the variables
table(flets)
table(flets[1:5]) # the first 5 elements of flets, but table will list out all the 
# frequencies, use factor to filter out the not existing alphabets
table(factor(flets[1:5]))

groessen.sort = sort(groessen[groessen["Geschlecht" == "m",]])
v1 = groessen["Geschlect" == "m"]
# how to modify the range of the xaxis?

boxplot(groessen$Groesse, main = "Box-Plot saemtlicher gemessener Koerpergroessen 
von 10 Frauen und 10 Maennern",horizontal = TRUE, xlab = "Groesse(in cm)")

# double/single quotes,  " "  or  ' ', a link https://stackoverflow.com/questions/20572436/are-double-and-single-quotes-always-interchangeable-in-r
wvec = groessen[groessen[,"Geschlecht"] == 'w',]
gr.w = groessen[groessen[,1] == "w",]
gr.m = groessen[groessen[,1] == "m",]

# what's the meaning of the spot at the Frauen boxplot? the data point below
# x_{0.25} - 1.5Q or above x_{0.75} + 1.5Q
boxplot(gr.w[,2],gr.m[,2],ylab="Groesse (in cm)",
        border=c("blue","red"),names=c("Frauen","Maenner"),
        main="Box-Plots der Koerpergroessen 
        von 10 Frauen und 10 Maennern")

box.erg = boxplot(gr.w[,2],gr.m[,2],plot= FALSE)
# here stats[1] is defind as min{x|x >= x_{0.25} - 1.5Q} 
box.erg$stats
range(gr.w$Groesse)
sort(gr.w[,2])

minor.tick(ny = 10)
