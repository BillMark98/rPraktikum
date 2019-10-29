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
            var = cumHaeufigkeit[argument >= arg][1]
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
plot(argument.ext,cumHaeufigkeit.ext,type = "s",xlab = "x(Tage)", ylab = "Fn(x)",main = "empirische Verteilungsfunktion fuer
      die Verweilstagen der Touristen")