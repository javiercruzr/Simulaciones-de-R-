
"Se crea la simulacion de una urna con la funcion sample que viene incluida
en Rstudio"

urna<-sample(c(rep('Grises',46),rep('Blancas',49)),20,replace=FALSE) # se crea
# la funcion urna que tal cual funcionara como
# una urna que tiene las probabilidades de que
# salga una bola o la otra, se especifica que
# no habra reemplazamiento y el numero de ensayos
# que se haran
blancas_totales<-49 # es el numero de bolas blancas que hay en la urna

grises_sacadas<-0 # se crea esta variable para ir guardando las bolas grises
# que se sacan

grises_totales<-46 # es el numero de bolas grises que hay en la urna

for (i in 1:20){ # se crea el ciclo donde ira iterando en cada ensayo que 
  # vaya ocurriendo hasta que lleguen a 20 
  
  if(urna[i]=='Grises'){ # la condicional es para ir comparando el color de la
    # bola que se saca, si es 'Gris' se entra a la condicion
    
    grises_totales<-grises_totales-1 # como saco gris, entonces se resta una a 
    # la cantidad de grises que hab?a en un 
    # principio 
    
    grises_sacadas<-grises_sacadas+1 # Si sale bola gris, se van sumando en 
    # la variable creada para ello
    
  }else{ # en caso de que no haya salido bola gris entra aqui
    
    blancas_totales<-blancas_totales-1 # como no es gris la bola que se saca
    # por ende es blanca y se va restando
    # a las blancas que teniamos en un
    # inicio
  }
}
print("Las bolas grises sacadas fueron:") # se imprime el mensaje 

print(grises_sacadas) # se imprime la variable grises_sacadas que tiene el 
# numero de bolas grises que salieron de la urna



"En la funcion que se presenta a continuacion se hace lo mismo 
 que la anterior asi que unicamente se comentaran las partes extra
 o que no se encontraban en la anterior pues los demas comentarios 
 son totalmente analogos"
repeticion<-function(n){ # se crea la funcion repetir en donde el parametro
  # solicitado es el numero de veces que queremos
  # repetir la simulacion
  
  a<-NULL # se crea una variable con ningun valor para irla llenando
  # conforme se repite el experimento
  for (i in 1:n){
    urna<-sample(c(rep('Grises',46),rep('Blancas',49)),20,replace=FALSE)
    blancas_totales<-49
    grises_sacadas<-0
    grises_totales<-46
    for (i in 1:20){
      if(urna[i]=='Grises'){
        grises_totales<-grises_totales-1
        grises_sacadas<-grises_sacadas+1
      }else{
        blancas_totales<-blancas_totales-1
      }
    }
    a<-c(a,grises_sacadas) # se llena la variable "a" como un vector donde
    # se iran agregando los valores que van saliendo 
    # en cada repeticion 
  }
  return(a) # regresa la variable "a" la cual ya tiene los valores obtenidos
  # en cada repeticion que se hace
}

repetir<-repeticion(100000) # se guarda el valor obtenido de la funcion "repetir" 
# que se manda a llamar con parametro x = 1,000,000 

hist(repetir, xlab='Bolas grises',ylab="Frecuencia", main="Histograma de
     bolas grises") # los valores de la variable r son graficados en un histograma 

"Se observa que al principio la frecuencia es muy baja y conforme van corriendo
 las repeticiones van aumentando hasta que llega a un maximo entre 9
 y 10 para que despues de esto comience a disminuir hasta llegar al final
 teniendo frecuencias similares a las del inicio, esto sucede debido a que 
 la probabilidad de sacar una bola gris es casi del 0.5, es decir, no es
 tan alta como para estar bastante seguros de que puede salir una bola
 gris"

