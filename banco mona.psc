Algoritmo Banco
	//Declaracion de elementos a usar
	
	Dimension ID[5]
	Dimension Usuarios[5]
	Dimension Contrase�as[5]
	Dimension Nombres[5]
	Dimension Ahorros[5]
	Dimension Corrientes[5]
	
	//Usuarios
	
	//Admin
	ID[0]<-"20.825.840"
	Usuarios[0]<-"Admin"
	Contrase�as[0]<-"admin"
	Nombres[0]<-"Administrador: Bryan Useche"
	Ahorros[0]<-0.00
	Corrientes[0]<-0.00
	
	//Usuario: Sebastian Vettel
	
	ID[1]<-"6.203.255"
	Usuarios[1]<-"Seb5"
	Contrase�as[1]<-"Gina"
	Nombres[1]<-"Sebastian Vettel"
	Ahorros[1]<-1000000
	Corrientes[1]<-2500000
	
	//Usuario: Kimi Raikkonen
	
	ID[2]<-"7.302.552"
	Usuarios[2]<-"Iceman"
	Contrase�as[2]<-"Leave me alone"
	Nombres[2]<-"Kimi Raikkonen"
	Ahorros[2]<-70000000
	Corrientes[2]<-1500000
	
	//Usuario: Lewis Hamilton
	
	ID[3]<-"44.230.252"
	Usuarios[3]<-"LH44"
	Contrase�as[3]<-"Hammer Time"
	Nombres[3]<-"Lewis Hamilton"
	Ahorros[3]<-44000000
	Corrientes[3]<-3300000
	
	//Usuario: Max Verstappen
	
	ID[4]<-"33.032.225"
	Usuarios[4]<-"Max33"
	Contrase�as[4]<-"Mad Max"
	Nombres[4]<-"Max Verstappen"
	Ahorros[4]<-4500000
	Corrientes[4]<-4800000
	
	salir<-'n'
	Mientras salir != 's' Hacer
		Imprimir "Banco Mo�a, Banco Universal"
		intento<-1
		Mientras intento < 3 Hacer
			Escribir "Ingrese su Usuario"
			Leer Usuario
			Escribir "Ingrese su contrase�a"
			Leer Contrase�a 
			Para i<-0 hasta 4 con paso 1 Hacer
				Si  Usuario = Usuarios[0] y Contrase�a = Contrase�as[0] entonces
					Escribir "Bienvenido " , Nombres[0] , " �Que desea realizar?"
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
					Si Usuario = Usuarios[i] Y Contrase�a = Contrase�as[i] Entonces
						Escribir "Bienvenido " , Nombres[i] , " �Que desea realizar?"
						Imprimir "1. - Consulta de Saldo"
						Imprimir "2. - Realizar deposito"
						Imprimir "3. - Retiros"
						Imprimir "4. - Regresar"
						Leer opc 
						Segun opc Hacer
							1:
								Imprimir "Men� Consultas"
								Imprimir "Esta operacion cobrara una comision de 0.007 % de la cuenta la cual va a consultar"
								Escribir "�Desea Continuar? [S/N]"
								Leer consulta
								Si consulta = 'S' Entonces
									Escribir "Seleccione cuenta la cual va a consultar"
									Imprimir "1 - Cuenta de Ahorros"
									Imprimir "2 - Cuenta Corriente"
									leer cuenta
									Segun cuenta Hacer
										1:
											Imprimir "Cliente: " , Nombres[i] , "     " , "C�dula: " , ID[i]
											total<-Ahorros[i] - (Ahorros[i] * 0.0007)
											Imprimir "Saldo de Cuentas de Ahorros: " , total
											Escribir "�Desea realizar otra consulta? [S/N]"
											leer consulta
										2:
											Imprimir "Cliente: " , Nombres[i] , "    " , "C�dula: " , ID[i]
											total<-Corrientes[i] - (Corrientes[i] * 0.0007)
											Imprimir "Saldo de Cuentas Corrientes: " , total
											Escribir "�Desea realizar otra consulta? [S/N]"
											leer consulta
										De Otro Modo:
										Imprimir "Opcion invalida"
									Fin Segun
								FinSi
							2:
								Imprimir "Men� Deposito"
								Escribir "Seleccione la cuenta la cual va a depositar"
								Imprimir "1 - Cuenta Corriente"
								Imprimir "2 - Cuenta de ahorro"
								leer cuenta
								Segun cuenta Hacer
									1:
										Imprimir "Cliente: " , Nombres[i] , "			" , "C�dula: " , ID[i]
										Escribir "Introduzca el monto el cual va a depositar"
										Leer monto
										total<-monto + Corrientes[i]
										Corrientes[i]<-total
										Imprimir "Operacion Exitosa"
										Imprimir "Su saldo actual en Su Cuenta Corriente es: " Corrientes[i]
										Escribir "�Desea realizar otro deposito? [S/N]"
										leer consulta
										si consulta = 'S' entonces
											Escribir "Seleccione la cuenta la cual va a depositar"
											Imprimir "1 - Cuenta Corriente"
											Imprimir "2 - Cuenta de ahorro"
											leer cuenta
										SiNo
											Imprimir "Saliendo"
											salir<-'s'
										FinSi
									2:
										Imprimir "Cliente: " , Nombres[i] , "				" , "C�dula: " , ID[i]
										Escribir "Introduzca el monto el cual va a depositar"
										Leer monto
										total<-monto + Ahorros[i]
										Corrientes[i]<-total
										Imprimir "Operacion Exitosa"
										Imprimir "Su saldo actual en Su Cuenta de Ahorro es: " Ahorros[i]
										Escribir "�Desea realizar otro deposito? [S/N]"
										leer consulta
										si consulta = 'S' entonces
											Escribir "Seleccione la cuenta la cual va a depositar"
											Imprimir "1 - Cuenta Corriente"
											Imprimir "2 - Cuenta de ahorro"
											leer cuenta
										SiNo
											Imprimir "Saliendo"
											salir<-'s'
										FinSi
									De Otro Modo:
										Imprimir "Opcion Invalida"
								Fin Segun
							3:
								Imprimir "Men� Retiro"
								Imprimir "Esta operacion cobrara una comision de 0.003 % de la cuenta la cual va a consultar"
								Escribir "�Desea Continuar? [S/N]"
								Leer consulta
								Si consulta = 'S' Entonces
									Escribir "Seleccione cuenta la cual va a consultar"
									Imprimir "1 - Cuenta corriente"
									Imprimir "2 - Cuenta de Ahorros"
									leer cuenta
									Segun cuenta Hacer
										1:
											Imprimir "Cliente: " , Nombres[i] , "			" , "C�dula: " , ID[i]
											Escribir "Introduzca el monto el cual va a Retirar"
											Leer monto
											Si monto < Corrientes[i] Entonces
												comision<-monto*0.00003
												total<-Corrientes[i] - (monto + comision)
												Corrientes[i]<-total
												Imprimir "Operacion Exitosa"
												Imprimir "Su saldo actual en Su Cuenta Corriente es: " Corrientes[i]
												Escribir "�Desea realizar otro retiro? [S/N]"
												leer consulta
											SiNo
												Imprimir "El monto que Ud. ha introducido es mayor al monto que posee, por favor verifique"
											FinSi
										2:
											Imprimir "Cliente: " , Nombres[i] , "			" , "C�dula: " , ID[i]
											Escribir "Introduzca el monto el cual va a Retirar"
											Leer monto
											Si monto < Ahorros[i] Entonces
												comision<-monto*0.00003
												total<-Ahorros[i] - (monto + comision)
												Ahorros[i]<-total
												Imprimir "Operacion Exitosa"
												Imprimir "Su saldo actual en Su Cuenta de Ahorro es: " Ahorros[i]
												Escribir "�Desea realizar otro retiro? [S/N]"
												leer consulta
											SiNo
												Imprimir "El monto que Ud. ha introducido es mayor al monto que posee, por favor verifique"
												salir<-'s'
											FinSi
									Fin Segun
								FinSi
							4:	
								Imprimir "Saliendo..."
								salir<-'s'
							De Otro Modo:
								Imprimir "Opcion Invalida"
						Fin Segun
					SiNo
						Imprimir "Nombre o Contrase�a erroneos, intente nuevamente"
					FinSi
				intento<- intento + 1	
				FinSi
			FinPara
		FinMientras
	FinMientras
FinAlgoritmo
