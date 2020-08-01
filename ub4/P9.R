# how to use sep        
unibew = read.table("/Users/bill/Desktop/rPraktikum/daten/unibew.dat", header = TRUE)
unibew

# entries should be 2000 * 3

options(max.print = 6000)

# calculate the number of entries which are m or w
table(unibew$Geschlecht)
# analog calculate the number of entries which conform to a 
table(unibew$Fach)
table(unibew$Zulassung)

table(unibew)
## the dimension are fach, geschlecht, zulassung , so maintain the last 
## two dimensions and sum along the first

# the name will be ignored
Tab.ges = table(unibew$Geschlecht,unibew$Zulassung)
# this method will retain the name
Tab.ges = table(unibew[,2:3])
# alternative
Tab.ges = apply(table(unibew),c(2,3),sum)

addmargins(Tab.ges)

# if margin = NULL, will be devided by the total number,
# i.e. the number at the right-low point of the addmargins(Tab.ges)
Tab.ges.bed = prop.table(Tab.ges,1)

# only produce the row sum
addmargins(Tab.ges,2)


y1 = unibew[unibew$Fach == 1,]

# the proportion of man who chooses course 1 is dramatically
# large, whereas woman chooses course 2 more
# on the other hand the course 1 accept more applicants P(z|F = 1, G=m) = 0.8
# P(z|F = 2,G = w) = 0.3
# in all, P(z|G = m) = P(z|F = 1,G = m) * P(F = 1|G = m) + P(z|F = 2,G = m) * P(F = 2|G = m)
# = 0.8 * 0.9 + 0.2 * 0.1
# similarly P(z|G = w) = 0.9 * 0.2 + 0.3 * 0.8

# actually since the admission rate of both courses is a weighted sum
# of the individual admission, so P(z|G = m) \in (0.2,0.8)
# P(z|G = w) \in (0.3,0.9) these two intervalls overlap, so
# it's possible that the end result will be that P(z|G = m) > P(z|G = w)
Tab.F1 = table(unibew[unibew$Fach == 1,c("Geschlecht","Zulassung")])
addmargins(Tab.F1)
Tab.F1.bed = prop.table(Tab.F1,1)
Tab.F1.bed

Fach1.ges = table(unibew)[1,,]
Fach1.ges.bed = prop.table(Fach1.ges,1)
Fach1.ges.bed

Fach2.ges = table(unibew)[2,,]
Fach2.ges.bed = prop.table(Fach2.ges,1)
addmargins(Fach2.ges)
Fach2.ges.bed
