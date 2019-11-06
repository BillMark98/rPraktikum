
make.Fn = function(argument,cumHaeufigkeit) {
    Fn = function(arg) {
        # how to sort the x ?
        # argument = x[1,]
        # depVar = x[2,]
        # total = sum(depVar)
        # haeufigkeit = depVar/total
        # cumHaeufigkeit = cumsum(haeufigkeit)
        argument.min = argument[1]
        argument.max = argument[length(argument)]
        if(arg < argument.min) {
            var = 0
        }
        else if(arg >= argument.max) {
            var = 1
        }
        else {
            vect = cumHaeufigkeit[argument <= arg]
            var = vect[length(vect)]
        }
        var
    }
}

touristData = rbind(c(2,3,7,10,14,21),c(6,2,12,6,10,4))
argument = touristData[1,]
depVar = touristData[2,]
total = sum(depVar)
haeufigkeit = depVar/total
cumHaeufigkeit = cumsum(haeufigkeit)

touristFn = make.Fn(argument,cumHaeufigkeit)
touristFn(9) - touristFn(3)


# plot
# extend the range of variable
argument.ext = c(0,argument,25)
cumHaeufigkeit.ext = cumsum(c(0,haeufigkeit,0))
par(las = 1)
plot(argument.ext,cumHaeufigkeit.ext,type = "s",
     xlab = "x(Tage)", 
     ylab = "Fn(x)",
     main = "empirische Verteilungsfunktion fuer
      die Verweilstagen der Touristen"
)


myFn = ecdf(x = argument.ext)
plot(myFn,xlab = "x(Tage)", 
     ylab = "Fn(x)",
     main = "empirische Verteilungsfunktion fuer
      die Verweilstagen der Touristen")






# b 

Tage = c(2,3,7,10,14,21)
Anz = c(6,2,12,6,10,4)

hrel = Anz/sum(Anz)
cumhrel = cumsum(c(0,hrel))

Fn = function(t) {
    k = sum(Tage <= t)
    # cumhrel[1] = 0, [2] = the first non zero value....
    cumhrel[k+1]
}
for(i in seq_along(Tage)) {
    print(Fn(Tage[i]))
}

Vectorize(Fn)(Tage)



# c

# variant 1
Tage.erw = c(0,Tage,25)
Fn.erw = c(cumhrel,1)

par(las = 1, cex = 0.8, cex.main = 1.1)
plot(Tage.erw, Fn.erw, type = "s",col = "blue",
     xlab = "x(Tage)", 
     ylab = "Fn(x)",
     main = "empirische Verteilungsfunktion fuer
      die Verweilstagen der Touristen"
)
points(Tage,cumhrel[2:7],col = "blue")


# variant 2
x = seq(0,25,0.01)
y = Vectorize(Fn)(x)
par(las = 1)
plot(x,y,type = "p",col = "blue",pch = 45,
     xlab = "x(Tage)", 
     ylab = "Fn(x)",
     main = "empirische Verteilungsfunktion fuer
      die Verweilstagen der Touristen"
)
points(Tage,cumsum(hrel),col = "blue",pch = 15)

# variant 3
Fn.neu = stepfun(Tage,cumhrel)
par(las = 1)
plot(Fn.neu, col = "blue", verticals = FALSE,
     pch = 15,
     xlab = "x(Tage)", 
     ylab = "Fn(x)",
     main = "empirische Verteilungsfunktion fuer
      die Verweilstagen der Touristen"
)

# variant 4
Tage.new = c(rep(2,6),rep(3,2),rep(7,12),rep(10,6),rep(14,10),rep(21,4))
plot(ecdf(Tage),col = "blue", lwd = 1,
     xlab = "x(Tage)", 
     ylab = "Fn(x)",
     main = "empirische Verteilungsfunktion fuer
      die Verweilstagen der Touristen")


minor.tick(nx = 5,ny = 2)