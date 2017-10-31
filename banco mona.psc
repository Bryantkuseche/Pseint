Algoritmo Banco
	//Declaracion de elementos a usar
	
	Dimension ID[5]
	Dimension Usuarios[5]
	Dimension Contraseñas[5]
	Dimension Nombres[5]
	Dimension Ahorros[5]
	Dimension Corrientes[5]
	
	//Usuarios
	
	//Admin
	ID[0]<-"20.825.840"
	Usuarios[0]<-"Admin"
	Contraseñas[0]<-"admin"
	Nombres[0]<-"Administrador: Bryan Useche"
	Ahorros[0]<-0.00
	Corrientes[0]<-0.00
	
	//Usuario: Sebastian Vettel
	
	ID[1]<-"6.203.255"
	Usuarios[1]<-"Seb5"
	Contraseñas[1]<-"Gina"
	Nombres[1]<-"Sebastian Vettel"
	Ahorros[1]<-1000000
	Corrientes[1]<-2500000
	
	//Usuario: Kimi Raikkonen
	
	ID[2]<-"7.302.552"
	Usuarios[2]<-"Iceman"
	Contraseñas[2]<-"Leave me alone"
	Nombres[2]<-"Kimi Raikkonen"
	Ahorros[2]<-70000000
	Corrientes[2]<-1500000
	
	//Usuario: Lewis Hamilton
	
	ID[3]<-"44.230.252"
	Usuarios[3]<-"LH44"
	Contraseñas[3]<-"Hammer Time"
	Nombres[3]<-"Lewis Hamilton"
	Ahorros[3]<-44000000
	Corrientes[3]<-3300000
	
	//Usuario: Max Verstappen
	
	ID[4]<-"33.032.225"
	Usuarios[4]<-"Max33"
	Contraseñas[4]<-"Mad Max"
	Nombres[4]<-"Max Verstappen"
	Ahorros[4]<-4500000
	Corrientes[4]<-4800000
	
	salir<-'s'
	Mientras salir != 'n' Hacer
		Imprimir "Banco Moña, Banco Universal"
		intento<-1
		Mientras intento < 3 Hacer
			Escribir "Ingrese su Usuario"
			Leer Usuario
			Escribir "Ingrese su contraseña"
			Leer Contraseña 
			Para i<-0 hasta 4 con paso 1 Hacer
				Si  Usuario = Usuarios[0] y Contraseña = Contraseñas[0] entonces
					Escribir "Bienvenido " , Nombres[0] , " ¿Que desea realizar?"
					Imprimir "1. - Total de cuentas de ahorro"
					Imprimir "2. - Total de cuentas corrientes"
					Imprimir "3. - Total por Cliente"
					Imprimir "4. - Salir"
					Leer opc
					Segun opc Hacer
						1:
							Para indice<-0 hasta 4 con paso 1 hacer
								cont<-0
								cont<-cont + Ahorros[i]
								Imprimir "Total Cuentas de Ahorro: " , cont 	
							FinPara
						2:
							Para indice<-0 hasta 4 con paso 1 hacer
								cont<-0
								cont<-cont + Corrientes[i]
								Imprimir "Total Cuentas Corriente: " , cont 	
							FinPara
						3:
							Para indice<-0 hasta 4 con paso 1 hacer
								cont<-0
								cont<-cont + Ahorros[i]
								cliente<-Nombres[i]
								Imprimir "Total Por cliente : "
								Imprimir " " , Nombres[i] , " " , Ahorros[i] + Corrientes[i]
							FinPara
						4:
							Imprimir "Saliendo..."
							salir<-'s'
						De Otro Modo:
							Imprimir "Opcion Invalida"
					Fin Segun
				SiNo
					Si Usuario = Usuarios[i] Y Contraseña = Contraseñas[i] Entonces
						Escribir "Bienvenido " , Nombres[i] , " ¿Que desea realizar?"
						Imprimir "1. - Consulta de Saldo"
						Imprimir "2. - Realizar deposito"
						Imprimir "3. - Retiros"
						Imprimir "4. - Regresar"
						Leer opc 
						Segun opc Hacer
							1:
								Imprimir "Menú Consultas"
								Imprimir "Nombre: " , Nombres[i] , "			" , "Cédula: " , ID[i] 
								Imprimir "Saldo de Cuentas de Ahorros: " , Ahorros[i]
								Imprimir "Saldo de Cuentas Corrientes: " , Corrientes[i]
								
							2:
								Imprimir "Menú Deposito"
							3:
								Imprimir "Menú Retiro"
							4:	
								Imprimir "Saliendo..."
								salir<-'s'
							De Otro Modo:
								Imprimir "Opcion Invalida"
						Fin Segun
					SiNo
						Imprimir "Nombre o Contraseña erroneos, intente nuevamente"
						
					FinSi
				intento<- intento + 1	
				FinSi
			FinPara
		FinMientras
	FinMientras
FinAlgoritmo
