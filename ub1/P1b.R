# teil b
myDataLength = length(myData)
Prozent = 100 * (myData[2:myDataLength] - myData[1:(myDataLength - 1)]) / myData[1:(myDataLength - 1)]
Prozent

myData.fakt = myData[-1]/myData[-12]
# so a simple solution
myData.proz = (myData.fakt - 1) * 100
myData.proz
# (1 + x)^11 = 67.8/43.5
wachstum = (67.8/43.5)^(1/11) - 1
wachstum * 100