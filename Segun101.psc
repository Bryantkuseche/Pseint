Algoritmo segun101
	//El segun es una especie de menu, en este caso haremos una calculadora
	Imprimir "Calculadora Express 0.1"
	Escribir "Selecciona una operacion:" //El escribir es para que lea la seleccion del usuario
	Imprimir "1 - Suma"
	Imprimir "2 - Resta"
	Imprimir "3 - Multiplicacion"
	Imprimir "4 - Division"
	Imprimir "5 - Potencia"
	Imprimir "6 - Cuadrado"
	Imprimir "7 - Seno de un numero"
	Leer operacion //Leemos la seleccion del usuario
	Segun operacion Hacer
		1: //Si la seleccion es 1, caemos aqui
			Escribir "Ingresa el primer numero"
			Leer a
			Escribir "Ingresa el segundo numero"
			Leer b
			Imprimir "La suma de a y b es:  a+b"
		2: //Si la seleccion es 2, caemos aqui
			Escribir "Ingresa el primer numero"
			Leer a
			Escribir "Ingresa el segundo numero"
			Leer b
			Imprimir "La resta de a y b es: " a-b
		3: //Si la seleccion es 3, caemos aqui
			Escribir "Ingresa el primer numero"
			Leer a
			Escribir "Ingresa el segundo numero"
			Leer b
			Imprimir "La multiplicacion de a y b es: " a*b
		4: //Si la seleccion es 4, caemos aqui
			Escribir "Ingresa el primer numero"
			Leer a
			Escribir "Ingresa el segundo numero"
			Leer b
			//Como no podemos dividir por cero, hacemos este codigo guardian
			//Un codigo guardian es un pedazo de codigo que hace que tu programa
			//Este un poco mas protegido contra un error logico
			si b = 0 Entonces 
				Imprimir "No se puede dividir por cero"
			SiNo
				Imprimir "La division entre a y  b es: " a+b
			FinSi
			//Si es 5, caemos aqui, aqui he escrito otro codigo guardian
		5: //esta vez con el 0^0
			Escribir "Ingresa la base"
			Leer a
			Escribir "Ingresa el exponente"
			Leer b
			Si a = 0 y b = 0 Entonces
				Imprimir "Has escrito algo indeterminado, saliendo..."
			SiNo
				Imprimir "La potencia de  a elevada a la b es: " a^b
			FinSi
		6: //Si es 6, caemos aqui.
			Escribir "Ingresa el numero"
			Leer b
			Imprimir "El cuadrado de a es: " a^2
		7: //Si es 7, caemos aqui.
			Escribir "Ingresa el numero"
			Leer a
			Imprimir "El seno de " a  "es: " sen(a)
		//Si el usuario nos esta vacilando o presiona una opcion distinta, caera aqui
		De Otro Modo:
			Imprimir "Opcion invalida"
	Fin Segun
FinAlgoritmo
//Reto: con un mientras, hacer que se repita hasta que el usuario escriba 'n'