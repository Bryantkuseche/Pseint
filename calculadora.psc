Algoritmo calculadora
	Salir = 's'
	Mientras Salir == 'n'
		Imprimir "Calculadora"
		Escribir  "Selecciona una operacion del 1 al 10"
		Imprimir "1 - Suma"
		Imprimir "2 - Resta"
		Imprimir "3 - Multiplicacion"
		Imprimir "4 - Division"
		Imprimir "5 - Cubo"
		Imprimir "6 - Cuadrado"
		Imprimir "7 - Potencia"
		leer operacion
		Si operacion > 7
			Imprimir "Opcion incorrecta, intentalo de nuevo"
			leer operacion
		SiNo
			Segun operacion Hacer
				1:
					Salir = 'n' 
					Mientras Salir != 's'
						Escribir "Inserta el primer valor"
						leer a
						Escribir "Inserta el segundo numero"
						leer b
						Imprimir "La suma es " a+b
						Escribir "Desea volver al menu anterior? s/n"
						leer Salir
					FinMientras
				2:
					Salir = 'n' 
					Mientras Salir != 's'
						Escribir "Inserta el primer valor"
						leer a
						Escribir "Inserta el segundo numero"
						leer b
						Imprimir "La resta es " a-b
						Escribir "Desea volver al menu anterior? s/n"
						leer Salir
					FinMientras
				3:
					Salir = 'n' 
					Mientras Salir != 's'
						Escribir "Inserta el primer valor"
						leer a
						Escribir "Inserta el segundo numero"
						leer b
						Imprimir "La multiplicacion es " a*b
						Escribir "Desea volver al menu anterior? s/n"
						leer Salir
					FinMientras
				4:
					Salir = 'n' 
					Mientras Salir != 's'
						Escribir "Inserta el primer valor"
						leer a
						Escribir "Inserta el segundo numero"
						leer b
						Si b != 0 entonces
							Imprimir "La division es " a/b
						SiNo
							Imprimir "No se puede dividir por cero"
						FinSi
						Escribir "Desea volver al menu anterior? s/n"
						leer Salir
					FinMientras
			5:
				Salir = 'n' 
				Mientras Salir != 's'
					Escribir "Inserta el valor"
					leer a
					b<- a^3
					Imprimir "El cubo del numero es " b
					Escribir "Desea volver al menu anterior? s/n"
					leer Salir
				FinMientras
			6:
				Salir = 'n' 
				Mientras Salir != 's'
					Escribir "Inserta el valor"
					leer a
					b<- a^2
					Imprimir "El cuadrado del numero es " b
					Escribir "Desea volver al menu anterior? s/n"
					leer Salir
				FinMientras
			7:
				Salir = 'n' 
				Mientras Salir != 's'
					Escribir "Inserta el valor de la base"
					leer a
					Escribir "Inserta el valor del exponente"
					leer b
					Imprimir "La potencia de a y b es " a^b
					Escribir "Desea volver al menu anterior? s/n"
					leer Salir
				FinMientras
			De Otro Modo:
				Escribir "No ha seleccionado ninguna operacion"
		Fin Segun
		FinSi
	Escribir "Desea realizar una operacion? s/n"
	leer Salir
	finmientras
	
	
FinAlgoritmo
