
"Imagina que cuentas con informaci?n de familias con tres hijos, donde 
cada hijo puede ser ni?o (B) o ni?a (G). A continuaci?n se muestra el 
espacio muestra de la secuencia en la que fueron naciendo los hijos:

S={BBB,BGB,GBB,GGB,BBG,BGG,GBG,GGG}

Imagine que cada una de estas secuencias tiene la misma probabilidad 
de ocurrencia. Con base en lo anterior, calcule:"

"?Cual es la probabilidad de que hayan nacido exactamente 2 ni?os 
 en una familia?"


"?Cual es la probabilidad de que al menos haya 2 ni?os en una familia?"

# Creamos la funcion "family" que nos ayudara a calcular las probabilidades
# solicitadas; en ?sta, el usuario ingresara a lo mucho cantidades donde la
# suma de los parametros sea 3 por como esta redactado el problema
# donde el primer parametro es la cantidad de ni?os y el segundo la cantidad
# de ni?as.

# Solo se comentara el caso donde b=1 y g=2 pues los comentarios en las
# demas lineas son totalmente analogos

family<-function(b,g){
  s<-c("BBB", "BGB", "GBB", "GGB", "BBG", "BGG","GBG","GGG") # haremos uso 
  # del vector que nos dan con las distintas
  # posibilidades de tener ni?os y ni?as
  
  if(b==1 & g==2){ # En la condicional se especifica que si los valores
    # ingresados son los que estan ahi, entonces ocurrirran
    # las siguientes lineas de codigo
    
    t<-c("GGB","BGG","GBG") # Se asigna el vector a la variable t donde sus
    # elementos son las distintas combinaciones de
    # acuerdo a los parametros ingresados
    
    prob1<-length(t)/length(s) # En la variable prob1 guardamos la longitud
    # del vector "t" dividida entre la longitud del
    # vector "s" pues de esa manera obtendremos la 
    # probabilidad 
    
    return(prob1) # nos regresa la probabilidad previamente calculada
  }
  if(b==2 & g==1){
    t<-c("BGB","GBB","BBG")
    prob2<-length(t)/length(s)
    return(prob2)
  }
  if(b==3 & g==0){
    t<-c("BBB")
    prob3<-length(t)/length(s)
    return(prob3)
  }  
  if(b==0 & g==3){
    t<-c("GGG")
    prog3<-length(t)/length(s)
    return(prog3)
  }
}

"?Cual es la probabilidad de que hayan nacido exactamente 2 ni?os 
 en una familia?"

a<-family(2,1) # Se manda a llamar a la funcion family con parametros 2 y 1
# pues como queremos la probabilidad de que sean exactamente
# 2 ni?os por ende debe ser 1 ni?a. Este resultado se guarda
# en la variable "a" porque se utilizara en la siguiente
# pregunta

a # Se llama a la variable "a" que nos mostrara la probabilidad solicitada


"?Cual es la probabilidad de que al menos haya 2 ni?os en una familia?"
b<-family(3,0) # Se manda a llamar a la funcion family con parametros 3 y 0
# pues como queremos la probabilidad de que sean al menos
# 2 ni?os tambien necesitamos la probabilidad de que 
# sean 3 y 0 ni?as. Este resultado se guarda
# en la variable "b"

c<-a+b # Se hace la suma de las probabilidades que se calcularon en la
# pregunta anterior y en el paso previo

c # Se llama a la variable "c" que nos mostrara la probabilidad solicitada