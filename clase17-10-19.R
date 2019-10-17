data = read.csv('https://raw.githubusercontent.com/VictorGuevaraP/MachineLearning/master/morosidad.csv', sep = ";")

#Primeros elementos
head(data)

#Tipo de datos
str(data)

#17 Variables
#Trabajar con 16 variables(excluyendo el identificador del cliente)

morosidad = as.data.frame(data[,c(2:17)])

head(morosidad)
names(morosidad)
str(morosidad)

#Cambiar a factor nivel de ingreso
morosidad$NivelIngreso = as.factor(morosidad$NivelIngreso)
str(morosidad)

#Cambiar a factor moroso
morosidad$Moroso = as.factor(morosidad$Moroso)
str(morosidad)

#ANALISIS UNIVARIADO Y BIVARIADO
#TARGET: MOROSO

table(morosidad$Moroso)

barplot(prop.table(table(morosidad$Moroso))*100,
        main="Distribucion de la morosidad", 
        names.arg=c("Moroso", "No moroso"),
                    col=c(2,3),
                    xlab="Morosidad", 
                    ylab= "Porcentaje de clientes",
        legend = TRUE)

#TAREA: REALIZAR BARPLOT DE NIVEL DE INGRESO

#Instalar ggplot2
library(ggplot2)

ggplot(data= morosidad) + 
  geom_bar(mapping = aes(x = TiempoBanco , 
                         fill = Moroso))

#TAREA:geom_bar - NIVEL INGRESO 
#Interpretacion
ggplot(data= morosidad) + 
  geom_bar(mapping = aes(x = NivelIngreso , 
                         fill = Moroso))

#HISTOGRAMA SALDO CUENTA
names(morosidad)
ggplot(data= morosidad) + 
  geom_histogram(mapping = aes(x = SaldoCuenta , 
                         fill = Moroso))

#instalamos gmodels
library(gmodels)
CrossTable(morosidad$NivelIngreso,morosidad$Moroso)

#TAREA: Interpretar que significan los otros valores de la tabla
#TABLA DE CONTINGENCIA

tablacon1 = table(morosidad$TiempoBanco, morosidad$Moroso)
barplot(tablacon1,
        beside = T,
        xlab = "Target",
        ylab = "Tiempo en el banco",
        main = "Distribucion del tiempo en el banco(meses)
        de los clientes"
        )

#VALORES PERDIDOS
#VERIFICAR LAS COLUMNAS QUE TIENEN VALORES PERDIDOS


#Identifico que columnas tienen valores NA
which(colSums(is.na(morosidad))!=0) 

#1,2,6,7,8,9

columnas_na = c(1,2,6,7,8,9)
porc_cna = 100*colSums(is.na(morosidad[,columnas_na]))/dim(morosidad)[1]
porc_cna

#Encontramos 10% de valores perdidos en Tiempo Banco

#MNAR

library(mice)

md.pattern(morosidad,rotate.names = T)


#OUTLIER
#REALIZAR BOXPLOT DE TODAS LAS VARIABLES PARA 
#ANALIZAR OUTLIERS

names(morosidad)
z = as.data.frame(morosidad[,c(1,3)])
boxplot(z)

#tarea: numero de operaciones del mes
#y de no bancarias









