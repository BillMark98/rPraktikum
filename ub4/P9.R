# how to use sep        
unibew = read.table("unibew.dat", header = TRUE)
table(unibew)
## the dimension are fach, geschlecht, zulassung , so maintain the last 
## two dimensions and sum along the first
Tab.ges = apply(table(unibew),c(2,3),sum)
Tab.ges.bed = prop.table(Tab.ges,1)

y1 = unibew[unibew$Fach == 1,]

Fach1.ges = table(unibew)[1,,]
Fach1.ges.bed = prop.table(Fach1.ges,1)
Fach1.ges.bed

Fach2.ges = table(unibew)[2,,]
Fach2.ges.bed = prop.table(Fach2.ges,1)
Fach2.ges.bed
