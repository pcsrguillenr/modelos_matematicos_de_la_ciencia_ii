#plotear las 50 primeras observaciones

print(Nile)
length(Nile)
head(Nile,10)
tail(Nile,12)
#mean(Nile)
summary(Nile)
plot(Nile)
plot(Nile, xlab = "A�o", ylab = "Volumen")
plot(Nile, xlab = "A�o", ylab = "Volumen", main = "Volumen anual del r�o Nilo en Asuan, 1871 - 1970", type = "b")

Nilo_task <-- head(Nile,50)
plot(c(1871:1920), Nilo_task, xlab = "A�o", ylab = "Volumen", main = "Volumen anual del r�o Nilo en Asuan, 1871 - 1920", type = "b")