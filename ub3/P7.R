Farben = matrix(c(94,7,16,10,84,119,29,54,17,26,14,14,20,68,5,15),nrow = 4,ncol = 4)
Farben
Haarf = c("Blond","Braun","Rot","Schwarz")
Augenf = c("Blau","Braun","Gruen","Haselnuss")
dimnames(Farben) = list(Augenfarbe = Augenf, Haarfarben = Haarf)
Farben.Randvert = addmargins(Farben)
write.csv(Farben.Randvert, "Farben.csv")


# dimension of a vector? why dim(c(1:3)) = 0
chi.matrix = (Farben.Randvert[1:4,1:4])^2 /
    + (Farben.Randvert[1:4,5] %*% t(Farben.Randvert[5,1:4]))

chi.quad = Farben.Randvert[5,5] * (sum(chi.matrix)-1)

contigenCoeffPearson = sqrt(chi.quad/(Farben.Randvert[5,5] + chi.quad))
contigenCoeffPearson.corrected = contigenCoeffPearson * sqrt(4/3)