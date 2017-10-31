Algoritmo nota01
	//El mientras es un ciclo que te permite ejecutar un codigo hasta
	//que la condicion se cumpla, en ese caso, es para que se repita
	//hasta que alguien escriba 'n'
	salir = 's'
	Mientras salir !='n' 
		Escribir "Insertar nota"
		Leer nota
		//Segun te permite hacer una especie de menu
		//Cada condicion sera evaluada hasta que se cumpla alguna
		//en caso de no cumplirse, caera al De Otro Modo.
		Segun nota Hacer 
			20: //Si la nota es 20 mostrara el mensaje de abajo
				Imprimir "Sobresaliente alto"
			18: // si es 18, mostrara el mensaje de abajo
				Imprimir "Sobresaliente bajo"
			17: //Si es 17, mostrara el mensaje de abajo 
				Imprimir "Alto"
			De Otro Modo: //Si ninguna se cumple, lo de abajo se mostrara
				Imprimir "Nota equivocada"
		Fin Segun
		Escribir "Otra consulta? s/n"
		Leer salir
	FinMientras
	//Reto: hacer que entre 17 y 20 no muestre 'Nota Equivocada'
FinAlgoritmo
