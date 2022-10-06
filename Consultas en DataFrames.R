"Se manda a llamar a la libreria de datasets"

library('datasets')

"Se inserta al dataframe iris la nueva columna que lleva el nombre de 
 area_sepalo donde se introducira la longitud del sepalo multiplicado 
 por el ancho del mismo regresandonos un dato de tipo numerico"

tab<-data.frame(iris,area_sepalo=iris$Sepal.Length*iris$Sepal.Width)
tab

"Se inserta al dataframe tabla1 la nueva columna que lleva el nombre de 
 area_petalo donde se introducira la longitud del petalo multiplicado 
 por el ancho del mismo regresandonos un dato de tipo numerico"

tab1<-data.frame(tab,area_petalo=tab$Petal.Length*tab$Petal.Width)
tab1

"Se hace la primer consulta donde se solicita la informacion de la 
especie versicolor con area de sepalo menor a 15"

cons<-tab1[tab1$Species=="versicolor" & tab1$area_sepalo<15,]
cons

"Se hace la segunda consulta donde se solicita la informacion de la 
 especie setosa con area de petalo mayor a 0.25"

cons1<-tab1[tab1$Species=="setosa" & tab1$area_petalo>0.25,]
cons1
