//Dado el siguiente algoritmo ¿ Indique que liena se puede modificar para el seudocogigo imprime un triangulo 
// de * tal como se indica en la salida ?
//Nota: Escribir "ok" Sin Saltar // se imprime ok y el cursor se uqeda en la misma linea
Funcion triangulos_estrellas()
	Definir n,i,j Como Entero;
	n=5
	Para i<-1 Hasta n 
		Para j<-1 Hasta i 
			Escribir "*" Sin Saltar;
		Fin Para
		Escribir ""
	Fin Para
FinFuncion

//¿ Cual es el resultado que presenta la variable x en el siguiente seudocodigo?
Funcion expresion()
	Definir a,b,x Como Entero
	a=3;b=6
	x<- a+a*(a+b)-b*a+(trunc(b/3)-2+a*a mod 2)
	Escribir "La respuesta es: ",x;
	Escribir "-----------------------"
	Escribir "Proceso:"
	escribir "a + a * (a + b) - b * a + (trunc(b / 3) - 2 + a * a mod 2)"
	escribir "3 + 3 * (3 + 6) - 6 * 3 + (trunc(6 / 3) - 2 + 3 * 3 mod 2)"
	escribir "3 + 3 * 9 - 6 * 3 + (2 - 2 + 9 mod 2)"
	escribir "3 + 27 - 18 + (2 - 2 + 1)"
	escribir "3 + 27 - 18 + 1"
	escribir "=13"
	Escribir "-----------------------------------------------------------"
	Escribir " seleccione un alternativa correcta "
	Escribir " a) 39"
	Escribir " b) 13"
	Escribir " c) 15"
	Escribir " d) 16"
	Escribir "----------------------------"
	Escribir " La respuesta correcta es la opcion: b"
FinFuncion

//Analice las siguientes lineas de programas y escriba ¿Cual es la respuesta que genera m y n?
Funcion presentar()
	Definir n,m,r Como Entero;
	n=20;m=25;r=1
	Mientras (r<>0) Hacer
		r= m mod n
		si ( r=0) Entonces
			Escribir "m:" m;
			Escribir "n:",n;
		SiNo
			n=m
			m=r
		FinSi
	FinMientras
	Escribir "----------------------------"
	Escribir "Proceso:"
	Escribir "m=25" " ", "n=20" " " ,  "r=1"
	Escribir "m=25" " ", "n=5"  " " ,  "r=5"
	Escribir "m=5"  " ", "n=5"  " " ,  "r=0"
	Escribir "-----------------------------------------------------------"
	Escribir " seleccione un alternativa correcta "
	Escribir " a) m=25 " " n=20 "
	Escribir " b) m=5 " " n=5 "
	Escribir " c) m=10 " " n=10 "
	Escribir " d) m=5 " " n=25"
	Escribir "----------------------------"
	Escribir " La respuesta correcta es la opcion : b"
FinFuncion

//Realizar  un Pseudocodigo   que permita ingresar una expresion matematica caracter por caracter . 
//A final debera presentar el operador matematico con mayor repeticiones .Los operadores considerados son :(*,+,-./).
//El programa finaliza cuando se ingresa una F
//Ejemplo : si la expresion="(4+2)*5/2-(5+2+3)
//presentar " el cracter '+'  tiene mayor repeticiones ",3
Funcion operador_matematico()
	Definir cantidadmas, cantidadmenos,cantidadpor,cantidadDiv,repeticiones,i como Entero
	Definir car,operadorMay como Caracter
	cantidadmas=0;cantidadmenos=0;cantidadpor=0;cantidadDiv=0;i=1
	car=""
	Escribir "Ingrese la expresion matematica caracter por caracter"
	Mientras car <> "F" Hacer
		Escribir "Ingrese caracter ",i ": "Sin Saltar
		Leer car 
		i=i+1
		Si car = '+' entonces
			cantidadmas = cantidadmas + 1
		Sino
			Si car = '-' Entonces
				cantidadmenos = cantidadmenos + 1
			SiNo
				Si car = '*' Entonces
					cantidadpor = cantidadpor + 1
				SiNo
					Si car = '/' Entonces
						cantidadDiv = cantidadDiv + 1
					Fin Si
				Fin Si
			Fin Si
		FinSi
	Fin Mientras
	operadorMay = ""
	repeticiones = 0
	Si cantidadmas > repeticiones Entonces
		repeticiones = cantidadmas
		operadorMay = "+"
	Fin Si
	
	Si cantidadmenos > repeticiones Entonces
		repeticiones = cantidadmenos
		operadorMay = "-"
	Fin Si
	
	Si cantidadpor > repeticiones Entonces
		repeticiones = cantidadpor
		operadorMay = "*"
	Fin Si
	
	Si cantidadDiv > repeticiones Entonces
		repeticiones = cantidadDiv
		operadorMay = "/"
	Fin Si
	Escribir "El operador mas repetido es: ",operadorMay
FinFuncion

//Elaborar un algortimo tal ,que dado un nombre y la edad en años . Calcule en numero de pulsaciones 
//que debe tener por cada segundo de ejercicios segun la edad de la persona.
//La formula de las pulsaciones = (200-edad )/base . El valor de la base=10
//Si la edad esta entre 1 y 9 años se aplica la formula con la base 10; si es menor de edad a la base 
// se le incrementa un 10%; Si es mayor de edad la base se incrementa un 15%.Para todos los casos las pulsaciones 
//=(20-edad)/base .Debe presentar la edad y pulsaciones calculada.

Funcion edad_pulsaciones()
	Definir nombre Como Cadena
    Definir edad, base, pulsaciones Como real
    Escribir "Ingrese su nombre:"Sin Saltar
    Leer nombre
    Escribir "Ingrese su edad :"Sin Saltar
    Leer edad
	base<-10
    Si edad <= 9 Entonces
		pulsaciones<-(200-edad)/base+0.10
		Escribir "Edad:", edad
		Escribir "Pulsaciones por segundo de ejercicio:", pulsaciones
		SiNo
		Si edad > 18 Entonces
			pulsaciones<-(200-edad)/base+0.15
			Escribir "Edad:", edad
			Escribir "Pulsaciones por segundo de ejercicio:", pulsaciones
	   Sino
		   pulsaciones <- (200 - edad)/base
		   Escribir "Edad:", edad
		   Escribir "Pulsaciones por segundo de ejercicio:", pulsaciones
	   FinSi
	   
		
		
	FinSi
FinFuncion

//Elaborar un seudocodigo que dado una serie de numeros presente aquellos numero positivos que son multiplos de 3 y 4 ; 
//al final debera presentar la cantidad de los numero negativos que no sean multiplos de 3 y 4 
//Ejemplo : serie = 12,24,5,-36,9,-5,-16
//Respuesta : Presentar multiplos 3 y 4 = 12 , 24 
//Presentar cantidad_negativos_No_multiplos_de 3 y 4 : 2 

Funcion serie_numeros()
	Definir cantidad_numeros, num_actual, cantidad_negativos,num como entero
    cantidad_numeros <- 0
    cantidad_negativos <- 0
	Escribir "Digite la cantidad de numeros:"
	Leer num
    Para i desde 1 hasta num hacer 
        Escribir "Ingrese un número:" , i ":"
		Leer num_actual
        Si (num_actual > 0) Y ((num_actual % 3 = 0) Y (num_actual % 4 = 0)) Entonces
            Escribir "El número " , num_actual , " es positivo y es múltiplo de 3 y 4"
        FinSi
        Si (num_actual < 0) Y ((num_actual % 3 <> 0) Y (num_actual % 4 <> 0)) Entonces
            cantidad_negativos <- cantidad_negativos + 2
        FinSi
		
    FinPara
	
    Escribir "La cantidad de números negativos que no son múltiplos de 3 y 4 es: ", cantidad_negativos
FinFuncion



Algoritmo alternativa
//triangulos_estrellas();
//expresion();
//presentar();
//operador_matematico();
//edad_pulsaciones();
//serie_numeros();
FinAlgoritmo
