publicidad <-- read.csv("https://raw.githubusercontent.com/VictorGuevaraP/MachineLearning/master/publicidad.csv", sep = ";")
Ventas <-- publicidad$Ventas
Television <-- publicidad$Television
plot(Ventas, Television, ylab = "Televisión")

#plotear los campos de x=ventas y=television
