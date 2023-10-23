Funcion caracter_
	//1)Leer un carácter y deducir si está o no comprendido entre las 
	//letras 'a'... 'z' y 'A'...'Z' ambas inclusive y sino verificar si es un signo de puntuacion ", . ; :"
	//y si no presentar solo el caracter.
	Definir ca Como Caracter //definimos la variable (ca) que guardará los caracteres
	Escribir "Ingrese el caracter: "; leer ca //ingresamos el caracter
	si ca >= "a" &  ca <= "z" Entonces //verificamos si posee las letras minusculas del abecedario
		Escribir ca," es una letra minuscula" //si contiene letra minuscula ejecutamos es una letra minuscula
	SiNo
		si ca >= "A" &  ca <= "Z" Entonces //verificamos si posee las letras mayusculas del abecedario
			Escribir ca," es una letra mayuscula" //si contiene letra mayuscula ejecutamos es una letra mayuscula
		SiNo
			si ca == "."  | ca == "," | ca == ":" | ca == ";" Entonces //verificamos si posee ". , : ;"
				Escribir "el caracter ", ca, " es un signo de puntuación." //si contiene ". , : ;" ejecutamos es un signo de puntuación.
			FinSi
		FinSi
	FinSI
FinFuncion

Funcion caracter_2
	//2)Leer un carácter y deducir si este es un numero(0..9) o una vocal(a,e,i,o,u)
	Definir ca Como Caracter //definimos la variable (ca) que guardará los caracteres o números
	Escribir "Ingrese el caracter: "; leer ca //ingresamos el caracter o número
	si ca >= "0" & ca <= "9" Entonces //verificamos si posee número 
		Escribir ca, " es un número." //si contiene número ejecutamos es un número
	SiNo
		si ca == "a" | ca == "e" | ca == "i" | ca == "o" | ca == "u" Entonces //verificamos si posee caracter
			Escribir ca, " es una vocal." //si contiene caracter ejecutamos es una vocal
		FinSi
	FinSi
FinFuncion

Funcion valor_a
	//3) Dado un caracter vocal presentar su respectivo valor ascii
	Definir ca Como Caracter //definimos la variable (ca) que guardará los caracteres o números
	Escribir "Ingrese la vocal: "; leer ca //ingresamos el caracter
	Segun ca Hacer //verificamos si es una vocal y le damos el valor de ascii dependiendo de la vocal
		"a":
			Escribir "El valor ascii es 97 "
		"e":
			Escribir "El valor ascii es 101 "
		"i":
			Escribir "El valor ascii es 105 "
		"o":
			Escribir "El valor ascii es 111 "
		"u":
			Escribir "El valor ascii es 117 "
		"A":
			Escribir "El valor ascii es 65"
		"E":
			Escribir "El valor ascii es 69 "
		"I":
			Escribir "El valor ascii es 73 "
		"O":
			Escribir "El valor ascii es 79"
		"U":
			Escribir "El valor ascii es 85"
	Fin Segun
FinFuncion

Funcion nombres
	//4) Leer dos nombres y verificar si estos son iguales, si el primer nombre es menor
	//que el segundo dado su contenido. 
	Definir n1, n2 Como Caracter //definimos dos caracter (n1,n2)
	Escribir "Ingrese los nombres: "; leer n1, n2 //ingresamos dos nombres
	si n1 == n2 Entonces //verificamos los dos nombres si son iguales o no
		Escribir "Lo nombres son iguales." //si son iguales ejecutamos Lo nombres son iguales.
	SiNo
		si n1 < n2 Entonces //verificamos los dos nombres si el primero es menor que el segundo
			Escribir n1, " es menor que ", n2 //si es menor ejecutamos es menor que el segundo nombre
		FinSi
	FinSi
FinFuncion

Funcion numeros_
	//5) Ingresar dos numeros y determinar si son iguales o si el primer numero es menor
	//que el segundo dado su valor 
	Definir n1, n2 Como real //definimos dos números (n1,n2)
	Escribir "Ingrese los numeros: "; leer n1, n2 //ingresamos dos numeros
	si n1 == n2 Entonces //verificamos si los números son iguales
		Escribir "Los numeros son iguales." //si son iguales ejecutamos Los numeros son iguales.
	SiNo
		si n1 < n2 Entonces //verificamos si el primer numero es menor que el segundo
			Escribir n1, " es menor que ", n2 //si el primer numero es menor ejecutamos es menor que el segundo
		FinSi
	FinSi
FinFuncion

Funcion numero_mayor
	//6) Ingresar 3 números, determinar cuál es el mayor o si son iguales
	Definir n1, n2, n3 Como Real //definimos tres números (n1, n2, n3)
	Escribir "Ingrese los tres números: "; leer n1, n2, n3 //ingresamos tres números
	si n1 == n2 & n2 == n3 Entonces //verificamos si los números son iguales
		Escribir "Los números son iguales." //si son iguales ejecutamos Los numeros son iguales
	sino 
		si n1 >= n2 & n1 >= n3 Entonces //verificamos si el primer números es mayor
			Escribir n1, " es el numero mayor" //si el primer numero es mayor ejecutamos es el mayor
		SiNo
			si n2 >= n1 & n2 >= n3 Entonces //verificamos si el segundo números es mayor
					Escribir n2, " es el numero mayor" //si el segundo numero es mayor ejecutamos es el mayor
				sino 
					si n3 >= n1 & n3 >= n2 Entonces //verificamos si el tercer números es mayor
						Escribir n3, " es el numero mayor" //si el tercer numero es mayor ejecutamos es el mayor
					FinSi
			FinSi
		FinSi
	finsi	
FinFuncion

Funcion numero_positivo_negativo
	//7) Ingresar un numero y determinar si es neutro, positivo o negativo
	definir n Como real //definimos un número (n)
	Escribir "Ingrese el número: "; leer n //ingresamos el número
	si n == 0 Entonces //verificamos si el número es 0 
		Escribir n, " es un número neutro." //si es 0 ejecutamos es un número neutro.
	SiNo
		si n > 0 Entonces //verificamos si el número es positivo
			Escribir n, " es un número positivo" //si es positivo ejecutamos es un número positivo
		SiNo
			si n< 0 Entonces //verificamos si el número es negativo
				Escribir n, " es un número negativo." //si es negativo ejectutamos es un número negativo.
			FinSi
		FinSi
	finsi
FinFuncion

Funcion cost_lapi
	//8) Determinar cuanto se debe pagar por x cantidad de lápices, considerando que si son más de 1000
	//el costo es de 1 , caso contrario, el precio será 1,50
	Definir c Como Entero //definimos una caracter (c)
	Escribir "Ingrese la cantidad de lápices: "; leer c //ingresamos la cantidad de lápices
	si c >= 1000 Entonces //verificamos si c >= 1000
		Escribir "El total a pagar es: ",(1* c) //sacamos el valor total con (1* c) ejecutamos El total a pagar es:
	SiNo //verificamos si c < 1000
		escribir "El total a pagar es: ",(1.5 * c) //sacamos el valor total con (1.5 * c) ejecutamos El total a pagar es:
	FinSi
FinFuncion

Funcion promocion_trajes
	//9) Almacén "Somos Mas" tiene una promoción: a todos los trajes que tienen un precio superior a 2500,
	//se les aplicará un descuento del 15%, a todo los demás se les aplicará sólo el 8%.
	Definir ps Como Real//definimos una caracter (ps)
	Escribir "Ingresar el precio de su traje: "; Leer ps //ingresamos el precio de su traje
	si ps >= 2500 Entonces //verificamos ps >= 2500
		Escribir "El valor a pagar es: ", ps-(ps*(15/100)) //sacamos valor a pagar con ps-(ps*(15/100)) ejecutamos El valor a pagar es:
	SiNo //verificamos ps < 2500
		Escribir "El valor a pagar es: ", ps-(ps*(8/100)) //sacamos valor a pagar con ps-(ps*(8/100)) ejecutamos El valor a pagar es:
	FinSi
FinFuncion

funcion somos_mas
	//"Somos Mas" es una empresa dedicada a ofrecer  banquetes; sus tarifas son 
	//las siguientes:El costo de platillo por persona es de $95.00,  pero si el número de 
	//personas es mayor a 200  pero menor o igual a 300, el costo es de $85.00. 
	//Para más de 300 personas el costo por platillo es  de $75.00.  Se requiere un  
	//algoritmo que ayude a determinar  el presupuesto que se debe presentar a los 
	//clientes que deseen realizar un evento.
	Escribir "Ingrese el número de personas que asistirán al evento:"
	Leer personas// leo el numero de personas asistentes
	Si personas > 300 Entonces // los evaluo segun las condiciones dadas por el ejercicio
		costo_platillo = 75
	Sino 
		Si personas > 200 Entonces
			costo_platillo = 85
		Sino
			costo_platillo = 95
		finsi 
	finsi 
	presupuesto = personas * costo_platillo	// calculo el presupuesto 
	Escribir "El presupuesto del banquete es: ", presupuesto, " dólares."// lo imprimo
	
FinFuncion

//11

Funcion vinicultores
	definir tipo Como Caracter
	definir p_inicial Como Real
	definir t Como Entero
	
	Repetir// el bloque repite el codigo hasta que me ingrese un tipo de uva correcto
	Escribir "Ingrese el tipo de uva: ";leer tipo// le pido el tipo de uva
	tipo = Minusculas(tipo)// transforma la letra a Minusculas
	si tipo <> "a" & tipo <> "b" Entonces
		Escribir "Ingrese el tipo corecto"// evaluar el tipo de uva
	FinSi
Mientras Que tipo <> "a" & tipo <> "b"// se repite siempre que no me ingresen un tipo de uva correcto osea

Repetir// se repite hasta que me ingrese un tipo de tamaño correcto  1 o 2
Escribir "Ingrese el tamaño de la uva: ";leer t//le pido el tipo tamaño
si t <> 1 & t <> 2 Entonces// evaluar el tamaño
	Escribir "Ingrese el tamaño corecto"
FinSi
Mientras Que t <> 1 & t <> 2

Escribir "Ingrese el precio inicial: "; leer p_inicial
Segun tipo Hacer
	"a":
		si t == 1 Entonces//evaluo el tamaño para agregar o disminuir el valor
			p_inicial = p_inicial + 0.20
		SiNo
			si t == 2 Entonces
				p_inicial = p_inicial + 0.30
			FinSi
		FinSi
	"b":
		si t == 1 Entonces
			p_inicial = p_inicial - 0.30
		SiNo
			si t == 2 Entonces
				p_inicial = p_inicial - 0.50
			FinSi
		FinSi
FinSegun
Escribir "El precio total es $", p_inicial
FinFuncion

Funcion alumnos_viaje
	definir a,c_a Como Entero
	Definir bus Como Real
	bus = 4000
	Escribir "Ingrese el total de los alumnos: "; leer a// pido el total de alumnos
	si a >= 100 Entonces// evaluo
		c_a = 65// le asigno el valor por alumno
		bus = c_a * a// esto va ganar el bus
	SiNo
		si a<=99 & a>= 50 Entonces
			c_a =  70 //le asigno el valor por alumno
			bus = c_a * a// esto va ganar el bus
		SiNo
			si a<=49 & a>= 30 Entonces
				c_a =  951
				bus = c_a * a
			SiNo
				c_a = trunc(bus/a)// si es menor a 30 divido los 400 por la cantidad de alumnos
			FinSi
		FinSi
	FinSi
	Escribir "El precio por alumno es ",c_a
	Escribir "El precio de la renta del autobus es ", bus
FinFuncion

Funcion precio_por_km
	Definir km, cost_to,cost_pe Como Real
	Definir ti Como Caracter// ti es el tipo de bus
	Definir perso Como Entero
	
	Repetir//se repite hasta que ingese un valor correcto
	Escribir "Ingrese el tipo de bus: "; leer ti
	ti = Minusculas(ti)// transformar a Minusculas
	si ti <> "a" & ti <> "b" & ti <> "c" Entonces
		Escribir "Ingrese el tipo corecto"
	FinSi
Mientras Que ti <> "a" & ti <> "b" & ti <> "c"

Escribir "Ingrese la cantidad de personas: "; leer perso
Escribir "Ingrese el total de km a recorrer: "; leer km
si perso < 20 Entonces// si el numero es menor a 20, se cobra como si fuera 20
	perso = 20
FinSi
Segun ti Hacer
	"a":
		cost_pe = 2 * km// asigno el valor que cobro por kilometro
	"b":
		cost_pe = 2.5 * km
	"c":
		cost_pe = 3 * km
FinSegun

cost_to = cost_pe * perso

Escribir "El costo total de la renta del bus es: $", cost_to// imprimo el total de la renta
Escribir "El costo total por persona es: $", cost_pe // imprimo el total por persona
FinFuncion

Funcion colas_a_pagar
	Definir cant Como Entero
	definir cost_u, cost_tot Como Real
	cost_u = 0.50
	Escribir  "Ingrese la cantidad de colas: "; leer cant
	
	si cant < 23 Entonces
		cost_u = 0.50 + (0.50*0.20)
	FinSi
	
	cost_tot = cost_u * cant
	
	Escribir "Cantidad a comprar: ", cant
	Escribir "Costo por unidad: ", cost_u
	Escribir "Base imponible: ", cost_tot
	Escribir "Iva 12%: ", cost_tot * 0.12
	Escribir "Costo total a pagar: ", cost_tot + (cost_tot * 0.12)
FinFuncion

//14

//15

Funcion ejercicio_15
	definir ca Como Entero  // Declarar una variable 'ca' para almacenar la cantidad a comprar.
    Definir precio_original, des, des_adi, va_pagar, total Como Real  // Declarar variables para precios y descuentos.
	
    Escribir "Ingrese la cantidad a comprar: "  // Solicitar al usuario la cantidad a comprar.
    leer ca  // Leer y almacenar la cantidad ingresada.
	
    Escribir "Ingrese el precio por producto: "  // Solicitar al usuario el precio por producto.
    leer precio_original  // Leer y almacenar el precio por producto.
	
    si ca > 19 Entonces  // Comprobar si la cantidad es mayor que 19.
        des = precio_original * 0.10  // Aplicar un descuento del 10% si la cantidad es mayor que 19.
    SiNo
        des = precio_original * 0.20  // Aplicar un descuento del 20% si la cantidad no es mayor que 19.
    FinSi
	
    total = precio_original - des  // Calcular el precio total después del descuento inicial.
    des_adi = total * 0.05  // Calcular un descuento adicional del 5% sobre el precio total.
    va_pagar = total - des_adi  // Calcular el valor a pagar después del descuento adicional.
	
    Escribir "Cantidad comprada: ", ca  // Mostrar la cantidad comprada.
    Escribir "Valor original: ", precio_original  // Mostrar el precio original.
    Escribir "Descuento inicial: ", des  // Mostrar el descuento inicial.
    Escribir "Total - descuento: ", total  // Mostrar el precio total después del descuento inicial.
    Escribir "Descuento adicional: ", des_adi  // Mostrar el descuento adicional.
    Escribir "Valor a pagar: ", va_pagar  // Mostrar el valor a pagar después del descuento adicional.
FinFuncion

Funcion ejercicio_16
	definir n, pr_ci, c_con como entero  // Declarar variables enteras n, pr_ci y c_con.
	
	Escribir "Ingrese el número de cita: "  // Solicitar al usuario el número de cita.
	leer n  // Leer y almacenar el número de cita ingresado.
	
	si n >= 1 & n <= 3 Entonces  // Comprobar si el número de cita está en el rango 1 a 3.
		pr_ci = 200 * n  // Calcular el precio por cita como $200 multiplicado por el número de citas.
		c_con = 200  // Establecer el costo de la consulta en $200.
	SiNo
		si n >= 4 & n <= 5 Entonces  // Comprobar si el número de cita está en el rango 4 a 5.
			pr_ci = 600 + (150 * n)  // Calcular el precio por cita como $200 más $150 por cada cita adicional.
			c_con = 150  // Establecer el costo de la consulta en $150.
		SiNo
			si n >= 6 & n <= 8 Entonces  // Comprobar si el número de cita está en el rango 6 a 8.
				pr_ci = 900 + (100 * n)  // Calcular el precio por cita como $350 más $100 por cada cita adicional.
				c_con = 100  // Establecer el costo de la consulta en $100.
			SiNo
				pr_ci = 1200 + (50 * n)  // Calcular el precio por cita como $450 más $50 por cada cita adicional.
				c_con = 50  // Establecer el costo de la consulta en $50.
			FinSi
		FinSi
	FinSi
	
	Escribir "Número de cita: ", n  // Mostrar el número de cita ingresado.
	Escribir "Valor a pagar por la cita: ", c_con  // Mostrar el costo de la consulta.
	Escribir "Monto total por las consultas recibidas: ", pr_ci  // Mostrar el monto total por todas las citas recibidas.
FinFuncion

Funcion ejercicio_17
	Definir n Como Entero  // Declarar una variable entera llamada 'n'.
	Definir co_pr, ma_pr, ma_ob, gas_fa, pre_ve Como Real  // Declarar variables reales para costos y precios.
	
	Escribir "Ingrese la clave del producto: "  // Solicitar al usuario que ingrese la clave del producto.
	leer n  // Leer y almacenar la clave del producto ingresada.
	
	Escribir "Ingrese el costo de la materia prima: "  // Solicitar al usuario que ingrese el costo de la materia prima.
	leer ma_pr  // Leer y almacenar el costo de la materia prima ingresado.
	
	Segun n Hacer  // Iniciar una estructura "Segun" basada en el valor de 'n'.
		1:
			ma_ob = ma_pr * 0.8  // Calcular la mano de obra como el 80% del costo de la materia prima.
			gas_fa = ma_pr * 0.28  // Calcular los gastos de fabricación como el 28% del costo de la materia prima.
		2:
			ma_ob = ma_pr * 0.85  // Calcular la mano de obra  como el 85% del costo de la materia prima.
			gas_fa = ma_pr * 0.30  // Calcular los gastos de fabricación como el 30% del costo de la materia prima.
		3:
			ma_ob = ma_pr * 0.75  // Calcular la mano de obra  como el 75% del costo de la materia prima.
			gas_fa = ma_pr * 0.35  // Calcular los gastos de fabricación como el 35% del costo de la materia prima.
		4:
			ma_ob = ma_pr * 0.75  // Calcular ela mano de obra como el 75% del costo de la materia prima.
			gas_fa = ma_pr * 0.28  // Calcular los gastos de fabricación como el 28% del costo de la materia prima.
		5:
			ma_ob = ma_pr * 0.8  // Calcular la mano de obra  como el 80% del costo de la materia prima.
			gas_fa = ma_pr * 0.30  // Calcular los gastos de fabricación como el 30% del costo de la materia prima.
		6:
			ma_ob = ma_pr * 0.85  // Calcular la mano de obra  como el 85% del costo de la materia prima.
			gas_fa = ma_pr * 0.35  // Calcular los gastos de fabricación como el 35% del costo de la materia prima.
	Fin Segun  // Fin de la estructura "Segun".
	
	co_pr = ma_pr + ma_ob + gas_fa  // Calcular el costo de producción como la suma de la materia prima, el margen de obtención y los gastos de fabricación.
	pre_ve = co_pr + (co_pr * 0.45)  // Calcular el precio de venta como el costo de producción más un 45% de margen de ganancia.
	
	Escribir "El precio de venta del producto es: ", pre_ve  // Mostrar el precio de venta del producto.
FinFuncion


//18
Funcion Ejercicio18
	Definir aumento, limite_actual Como Real  // Declarar variables reales para el aumento y el límite actual.
	Definir limite_credito Como Real  // Declarar una variable real para el límite de crédito.
	Definir tipo Como Entero  // Declarar una variable entera para el tipo de tarjeta.
	
	Escribir "Definir el tipo de tarjeta";  // Solicitar al usuario que defina el tipo de tarjeta.
	Leer tipo;  // Leer y almacenar el tipo de tarjeta ingresado.
	Escribir "Ingresa el valor del límite actual:";  // Solicitar al usuario que ingrese el límite de crédito actual.
	Leer limite_credito;  // Leer y almacenar el límite de crédito ingresado.
	aumento <- 0;  // Inicializar la variable "aumento" en 0.
	
	Si tipo = 1 Entonces  // Comprobar si el tipo de tarjeta es igual a 1.
		aumento = limite_credito * 0.25  // Calcular el aumento como el 25% del límite de crédito.
	Sino 
		Si tipo = 2 Entonces  // Comprobar si el tipo de tarjeta es igual a 2.
			aumento = limite_credito * 0.35  // Calcular el aumento como el 35% del límite de crédito.
		Finsi
		Si tipo = 3 Entonces  // Comprobar si el tipo de tarjeta es igual a 3.
			aumento = limite_credito * 0.40  // Calcular el aumento como el 40% del límite de crédito.
		Sino 
			aumento = limite_credito * 0.50  // Calcular el aumento como el 50% del límite de crédito si no es ninguno de los tipos anteriores.
		FinSi
	FinSi
	
	limite_actual = limite_credito + aumento;  // Calcular el límite actual sumando el límite de crédito y el aumento.
	Escribir "El nuevo aumento es: ", aumento;  // Mostrar el valor del aumento.
	Escribir "El nuevo límite de su tarjeta es: ", limite_actual;  // Mostrar el nuevo límite de la tarjeta.
	
FinFuncion

//Entrada pe(Leer), co(Calcular),zona(Leer)
//Proceso 
//Si pe > 5 Entonces
//	Escribir "El paquete no puede ser transportado"
//Sino 
//	Escribir "Ingrese la zona a donde se dirige su correspondencia"
//	Escribir "1.América del Norte"
//	Escribir "2.América Central" 
//	Escribir "3.América del Sur"
//	Escribir "4.Europa"
//	Escribir "5.Asia"
//	leer zona 
//	si zona =1 Entonces
//		co= (pe*1000) *11
//		Escribir "1.América del Norte"
//	SiNo
//		Si zona = 2 Entonces
//			co = (pe*1000)*10 
//			Escribir "2.América Central"
//		SiNo
//			Si zona = 3 Entonces
//				co= (pe*1000)*12
//				Escribir "3.América del Sur"
//			SiNo
//				Si zona = 4 Entonces
//					co=(pe*1000)*24
//					Escribir "4.Europa"
//				Sino 
//					co=(pe*1000)*27
//					Escribir "5.Asia"
//				FinSi
//			FinSi
//			
//		FinSi
//		
//	FinSi
//Finsi 
//Salida co,pe

Funcion Ejercicio19
	Definir pe, co Como Real
	Definir zona como real
	Escribir "Ingrese el peso del paquete en KG"
	Leer pe 
	Si pe > 5 Entonces
		Escribir "El paquete no puede ser transportado"
	Sino 
		Escribir "Ingrese la zona a donde se dirige su correspondencia"
		Escribir "1.América del Norte"
		Escribir "2.América Central" 
		Escribir "3.América del Sur"
		Escribir "4.Europa"
		Escribir "5.Asia"
		leer zona 
		si zona =1 Entonces
			co= (pe*1000) *11
			Escribir "1.América del Norte"
		SiNo
			Si zona = 2 Entonces
				co = (pe*1000)*10 
				Escribir "2.América Central"
			SiNo
				Si zona = 3 Entonces
					co= (pe*1000)*12
					Escribir "3.América del Sur"
				SiNo
					Si zona = 4 Entonces
						co=(pe*1000)*24
						Escribir "4.Europa"
					Sino 
						co=(pe*1000)*27
						Escribir "5.Asia"
					FinSi
			    FinSi
				
			FinSi
			
		FinSi
	Finsi 
	Escribir "El cobro por el envío es de: ", co 
	Escribir "El paquete tiene un peso de: ", pe , " kilos"
FinFuncion

//Entrada  peso(Leer),Prom40(Calcular),Prom40_50(Calcular),Prom50_60(Calcular),Prom60(Calcular) ,coAlum40(Calcular)
//coAlum40_50(Calcular),coAlum50_60(Calcular),coAlum60(Calcular),auAlum40(Calcular),auAlum40_50(Calcular),auAlum50_60(Calcular),auAlum60(Calcular)
//Proceso 
//Mientras peso<>0 Hacer
//	coAlumno=coAlumno+1
//	Si peso<40 Entonces
//		coAlum40=coAlum40+1
//		auAlum40=auAlum40+peso
//		
//	sino
//		Si peso>=40 y peso<=50 Entonces
//			coAlum40_50=coAlum40_50+1
//			auAlum40_50=auAlum40_50+peso
//			
//		SiNo
//			Si peso>50 y peso<60
//				coAlum50_60=coAlum50_60+1
//				auAlum50_60=auAlum50_60+peso
//				
//			SiNo
//				coAlum60=coAlum60+1
//				auAlum60=auAlum60+peso
//				
//			FinSi
//			
//			
//		FinSi
//	FinSi
//	Escribir "Ingrese el peso del siguiente alumno: "
//	Leer peso;
//FinMientras
//Prom40=coAlum40/coAlumno*100
//Prom40_50=coAlum40_50/coAlumno*100
//Prom50_60=coAlum50_60/coAlumno*100
//Prom60=coAlum60/coAlumno*100
//Salida Prom40,Prom40_50,Prom50_60,Prom60,coAlum40,coAlum40_50,coAlum50_60,coAlum60

Funcion Ejercicio20
	Definir  peso,Prom40,Prom40_50,Prom50_60,Prom60 como reales;
	Definir coAlum40,coAlum40_50,coAlum50_60,coAlum60,auAlum40,auAlum40_50,auAlum50_60,auAlum60 como reales;
	
	Escribir"Ingrese el peso del alumno"
	Leer peso;
	Mientras peso<>0 Hacer
		coAlumno=coAlumno+1
		Si peso<40 Entonces
			coAlum40=coAlum40+1
			auAlum40=auAlum40+peso
			
		sino
			Si peso>=40 y peso<=50 Entonces
				coAlum40_50=coAlum40_50+1
				auAlum40_50=auAlum40_50+peso
				
			SiNo
				Si peso>50 y peso<60
					coAlum50_60=coAlum50_60+1
					auAlum50_60=auAlum50_60+peso
					
				SiNo
					coAlum60=coAlum60+1
					auAlum60=auAlum60+peso
					
				FinSi
				
				
			FinSi
		FinSi
		Escribir "Ingrese el peso del siguiente alumno: "
		Leer peso;
	FinMientras
	Prom40=coAlum40/coAlumno*100
	Prom40_50=coAlum40_50/coAlumno*100
	Prom50_60=coAlum50_60/coAlumno*100
	Prom60=coAlum60/coAlumno*100
	Escribir "Alumnos con peso menor a 40 kg: ",coAlum40;
	Escribir "Promedio de peso en el rango menor a 40 kg: ",Prom40,"%";
	Escribir "Alumnos con peso entre 40 kg y 50 kg: ", coAlum40_50;
	Escribir "Promedio de peso en el rango entre 40 kg y 50 kg: ", Prom40_50,"%";
	Escribir "Alumnos con peso entre 50 kg y 60 kg: ", coAlum50_60;
	Escribir "Promedio de peso en el rango entre 50 kg y 60 kg: ",Prom50_60,"%";
	Escribir "Alumnos con peso mayor a 60 kg: ", coAlum60;
	Escribir "Promedio de peso en el rango mayor a 60 kg: ", Prom60,"%";
FinFuncion

//Entrada a(Leer),b(Leer),c(Leer),d(Leer)
//Proceso 
//Si a * 2 = b Entonces
//	Escribir "La mitad del número 1 es la mitad del número 2 : "
//Sino 
//	Escribir "La mitad del número 1 no es la mitasd del número 2:"
//	
//Finsi 
//
//
//Si d % c = 0 Entonces
//	Escribir "El número 3 es dividor del número 4"
//Sino 
//	Escribir "El número 3 no es el  dividor del número 4"
//	
//	FinSi
//Salida texto ingresado

Funcion Ejercicio21
	Definir a,b,c,d Como Entero 
	Escribir "Ingresar 4 números "
	leer a,b,c,d 
	
	Si (a * 2 == b) Entonces
		Escribir "El número 1 es la mitad del número 2"
	Sino 
		Escribir "El número 1 no es la mitad del número 2"
		
	Finsi 
	
	
	Si (c % d == 0) Entonces
		Escribir "El número 3 es divisor del número 4"
	Sino 
		Escribir "El número 3 no es divisor del número 4"
		
	FinSi
	
FinFuncion

//Entrada num1(Leer),num2(Leer),num3(Leer)
//Proceso 
//si num1 = num2*2 y num1 = num3 * 0.8 Entonces
//	escribir "el numero 1 si es el doble del numero 2 y el 20% del numero 3"
//	
//SiNo
//	Escribir "el numero 1 no es el doble del numero 2 y no hay 20% del numero 3"
//FinSi
//Salida  Texto ingresado

Funcion Ejercicio22
	definir num1, num2, num3 Como real
	Escribir "Digite numero 1"
	Leer num1
	escribir "Digite numero 2"
	Leer num2
	Escribir "Digite numero 3"
	Leer num3
	si (num1 = num2*2) y (num1 = num3 * 0.8) Entonces
		escribir "El número 1 si es el doble del número 2 y es el 20% menos del número 3"
		
	SiNo
		Escribir "El número 1 no es el doble del número 2 y no es el 20% menos del número 3"
	FinSi
	
FinFuncion



Funcion  Ejercicio23
	Definir num como entero  // Declarar una variable entera llamada 'num'.
	Definir dia Como Caracter  // Declarar una variable de tipo caracter llamada 'dia'.
	Dimension dia[7]  // Declarar un arreglo de caracteres 'dia' con 7 elementos.
	dia[0] = "Lunes"; dia[1] = "Martes"; dia[2] = "Miércoles"; dia[3] = "Jueves"; dia[4] = "Viernes"; dia[5] = "Sábado"; dia[6] = "Domingo";  // Asignar los nombres de los días de la semana a los elementos del arreglo.
	
	Escribir "Digite un número del 1 al 7"  // Solicitar al usuario que ingrese un número del 1 al 7.
	Leer num  // Leer y almacenar el número ingresado.
	
	Si num >= 1 Y num <= 7 Entonces  // Comprobar si el número está en el rango del 1 al 7.
		Escribir "El día es ", dia[(num-1)]  // Mostrar el día correspondiente al número ingresado restando 1 para ajustar al índice del arreglo.
	Sino
		Escribir "Error. El número no coincide con los días de la semana"  // Mostrar un mensaje de error si el número no está en el rango esperado.
FinSi

FinFuncion


Funcion  Ejercicio24
	Definir num como entero  // Declarar una variable entera llamada 'num'.
	Definir mes Como Caracter  // Declarar una variable de tipo caracter llamada 'mes'.
	Dimension mes[12]  // Declarar un arreglo de caracteres 'mes' con 12 elementos.
	mes[0] = "enero"; mes[1] = "febrero"; mes[2] = "marzo"; mes[3] = "abril"; mes[4] = "mayo"; mes[5] = "junio";
	mes[6] = "julio"; mes[7] = "agosto"; mes[8] = "septiembre"; mes[9] = "octubre"; mes[10] = "noviembre"; mes[11] = "diciembre";  // Asignar los nombres de los meses del año a los elementos del arreglo.
	
	Escribir "Digite un número del 1 al 12"  // Solicitar al usuario que ingrese un número del 1 al 12.
	Leer num  // Leer y almacenar el número ingresado.
	
	Si num >= 1 Y num <= 12 Entonces  // Comprobar si el número está en el rango del 1 al 12.
		Escribir "El mes es ", mes[(num-1)]  // Mostrar el mes correspondiente al número ingresado restando 1 para ajustar al índice del arreglo.
	Sino
		Escribir "Error. El número no coincide con los meses del año"  // Mostrar un mensaje de error si el número no está en el rango esperado.
FinSi

FinFuncion

//Entrada estatura(Leer),suma(Calcular),promedio(Calcular),x(cosntante),total(Calcular)
//Proceso
//mientras x<= total Hacer
//	Escribir "ingrese la estatura"
//	leer estatura
//	suma=suma+estatura
//	x=x+1
//FinMientras
//promedio = suma/total
//salida promedio
Funcion  Ejercicio25
	definir estatura, suma, promedio como real
	definir x, total Como Entero
	Escribir "Ingrese el total de personas"
	leer total
	x=1
	suma=0
	mientras x<= total Hacer
		Escribir "Ingrese la estatura"
		leer estatura
		suma=suma+estatura
		x=x+1
	FinMientras
	promedio = suma/total
	
	Escribir "La estatura promedio del grupo es: ",promedio
	
FinFuncion

Funcion  Ejercicio26
	Definir num como entero  // Declarar una variable entera llamada 'num'.
	Escribir "Números pares hasta el 100"  // Mostrar un mensaje indicando el propósito del programa.
	
	Para num <- 2 Hasta 100 Con Paso 2 Hacer  // Iniciar un bucle "Para" desde 2 hasta 100 con un paso de 2.
		Escribir Sin Saltar num, " "  // Mostrar el número actual sin saltar de línea y seguido de un espacio.
	Fin Para  // Finalizar el bucle "Para".
	
	Escribir " "  // Mostrar un salto de línea al final para separar los números de otros mensajes.

FinFuncion


//27
Funcion suma_sucesiva
	Definir n, c, suma Como Real  // Declarar variables reales 'n' (para los números ingresados), 'c' (para contar) y 'suma' (para almacenar la suma).
	
	Escribir "Ingrese los 10 números: "  // Mostrar un mensaje solicitando al usuario que ingrese 10 números.
	c = 0  // Inicializar la variable 'c' en 0 para contar.
	suma = 0  // Inicializar la variable 'suma' en 0 para almacenar la suma total.
	
	Mientras c < 10 Hacer  // Iniciar un bucle "Mientras" que se ejecutará mientras 'c' sea menor que 10.
		leer n  // Leer y almacenar el número ingresado en 'n'.
		suma = suma + n  // Sumar el número ingresado a la suma acumulada.
		c = c + 1  // Incrementar el contador 'c' en 1 para llevar el control de cuántos números se han ingresado.
	Fin Mientras  // Finalizar el bucle "Mientras".
	
	Escribir "La suma total de los números es: ", suma  // Mostrar el resultado, que es la suma total de los números ingresados.

FinFuncion 

Funcion edad_promedio
	Definir n, s, sum, m, m1 como entero  // Declarar variables enteras n (total de alumnos), s (contador), sum (suma de edades), m (arreglo de edades) y m1 (copia de n).
	
	Escribir "Ingrese el total de alumnos: "  // Solicitar al usuario que ingrese el total de alumnos.
	leer n  // Leer y almacenar el valor ingresado en 'n'.
	Dimension m[n]  // Declarar un arreglo 'm' de tamaño n para almacenar las edades de los alumnos.
	m1 = n  // Asignar el valor de n a m1 como una copia de n.
	s = 0  // Inicializar el contador 's' en 1.
	Escribir "Ingrese las edades: "  // Solicitar al usuario que ingrese las edades de los alumnos.
	Mientras m1 <> 0 Hacer  // Iniciar un bucle "Mientras" que se ejecutará mientras m1 sea diferente de 0.
		leer m[s]  // Leer y almacenar la edad ingresada en la posición s del arreglo 'm'.
		s = s + 1  // Incrementar el contador 's'.
		m1 = m1 - 1  // Decrementar m1 para llevar un control de cuántas edades se han ingresado.
	Fin Mientras  // Finalizar el bucle "Mientras".
	sum = 0  // Inicializar la variable 'sum' en 0 para la suma de edades.
	Para m1 <- 0 Hasta n-1 Con Paso 1 Hacer  // Iniciar un bucle "Para" desde 1 hasta n con un paso de 1.
		sum = sum + m[m1]  // Sumar la edad en la posición m1 del arreglo 'm' a la suma acumulada.
	Fin Para  // Finalizar el bucle "Para".
	Escribir "El promedio de las edades es: ", sum / n  // Mostrar el resultado, que es el promedio de las edades de los alumnos.
FinFuncion

Funcion horas_trabajadas
	Definir ho, va_ho Como Real  // Declarar variables reales 'ho' (total de horas diarias) y 'va_ho' (valor por hora).
	Escribir "Ingrese el total de horas diarias: ";  // Solicitar al usuario que ingrese el total de horas diarias.
	leer ho  // Leer y almacenar el valor ingresado en 'ho'.
	Escribir "Ingrese el valor por hora: ";  // Solicitar al usuario que ingrese el valor por hora.
	leer va_ho  // Leer y almacenar el valor ingresado en 'va_ho'.
	Escribir "Valor a pagar por día trabajado: $", (ho * va_ho)  // Mostrar el valor a pagar por día trabajado, que es el resultado de multiplicar 'ho' por 'va_ho'.
	Escribir "Sueldo a pagar al trabajador (20 días trabajados): $", (ho * va_ho) * 20  // Mostrar el sueldo total a pagar al trabajador por 20 días trabajados, que es el resultado de multiplicar el valor diario por 20.
	
FinFuncion

Funcion ventas_dia
	Definir n, cv, v, vm10, vm5, vme5, cm10, cm5, cme5 Como Entero  // Declarar variables enteras para el número de ventas, el valor de las ventas y estadísticas.
	
	Escribir "Ingrese el número de ventas: ";  // Solicitar al usuario que ingrese el número de ventas.
	leer n  // Leer y almacenar el valor ingresado en 'n'.
	
	Escribir "Ingrese el valor de cada venta: "  // Solicitar al usuario que ingrese el valor de cada venta.
	
	vm10 = 0; vm5 = 0; vme5 = 0  // Inicializar variables para el valor total de ventas en tres categorías.
	cm10 = 0; cm5 = 0; cme5 = 0  // Inicializar variables para el conteo de ventas en tres categorías.
	
	Mientras n <> 0 Hacer  // Iniciar un bucle "Mientras" que se ejecutará mientras n no sea igual a 0.
		leer v  // Leer y almacenar el valor de la venta en 'v'.
		
		si v > 1000 Entonces  // Comprobar si el valor de la venta es mayor a $1000.
			cm10 = cm10 + 1  // Incrementar el contador de ventas mayores a $1000.
			vm10 = vm10 + v  // Sumar el valor de la venta a la categoría de ventas mayores a $1000.
		SiNo
			si v > 500 & v <= 1000 Entonces  // Comprobar si el valor de la venta está entre $500 y $1000.
				cm5 = cm5 + 1  // Incrementar el contador de ventas entre $500 y $1000.
				vm5 = vm5 + v  // Sumar el valor de la venta a la categoría de ventas entre $500 y $1000.
			sino 
				si v <= 500 Entonces  // Comprobar si el valor de la venta es menor o igual a $500.
					cme5 = cme5 + 1  // Incrementar el contador de ventas menores o iguales a $500.
					vme5 = vme5 + v  // Sumar el valor de la venta a la categoría de ventas menores o iguales a $500.
				FinSi
			FinSi
		FinSi
		
		n = n - 1  // Decrementar el contador de ventas (n).
	FinMientras  // Finalizar el bucle "Mientras".
	
	Escribir "El número total de ventas mayores a $1000 es: ", cm10  // Mostrar el número total de ventas mayores a $1000.
	Escribir "El valor total de las ventas mayores a $1000 es: $", vm10  // Mostrar el valor total de ventas mayores a $1000.
	Escribir " "
	Escribir "El número total de ventas mayores a $500 y menores o iguales a $1000 es: ", cm5  // Mostrar el número total de ventas entre $500 y $1000.
	Escribir "El valor total de ventas mayores a $500 y menores o iguales a $1000 es: $", vm5  // Mostrar el valor total de ventas entre $500 y $1000.
	Escribir " "
	Escribir "El número total de ventas menores o iguales a $500 es: ", cme5  // Mostrar el número total de ventas menores o iguales a $500.
	Escribir "El valor total de las ventas menores o iguales a $500 es: $", vme5  // Mostrar el valor total de ventas menores o iguales a $500.
	
FinFuncion

Funcion notas_alumnos
	Definir n_a, m, lo, re, cal, slo, sre, scal Como Entero  // Declarar variables enteras para el número de alumnos, variables de calificaciones y variables de suma.
	
	Escribir "Ingrese el número de alumnos: ";  // Solicitar al usuario que ingrese el número de alumnos.
	leer n_a  // Leer y almacenar el valor ingresado en 'n_a'.
	
	m = n_a  // Asignar el valor de n_a a m como una copia del número de alumnos.
	Escribir "Ingrese las calificaciones con respecto a las asignaturas"  // Mostrar un mensaje indicando al usuario que ingrese calificaciones.
	Escribir " "
	
	slo = 0; sre = 0; scal = 0  // Inicializar variables de suma para las tres asignaturas.
	
	Mientras m <> 0 Hacer  // Iniciar un bucle "Mientras" que se ejecutará mientras m no sea igual a 0.
		Escribir "Ingrese las notas del estudiante: "  // Solicitar al usuario que ingrese las calificaciones.
		Escribir "Lógica: "; leer lo  // Leer y almacenar la calificación en 'lo'.
		slo = slo + lo  // Sumar la calificación a la suma de Lógica.
		
		Escribir "Requerimientos: "; leer re  // Leer y almacenar la calificación en 're'.
		sre = sre + re  // Sumar la calificación a la suma de Requerimientos.
		
		Escribir "Cálculo: "; leer cal  // Leer y almacenar la calificación en 'cal'.
		scal = scal + cal  // Sumar la calificación a la suma de Cálculo.
		
		m = m - 1  // Decrementar el contador de alumnos (m).
		Escribir " "
	Fin Mientras  // Finalizar el bucle "Mientras".
	
	Escribir "Promedio de Lógica: ", (slo/n_a)  // Calcular y mostrar el promedio de calificaciones en Lógica.
	Escribir "Promedio de Requerimientos: ", (sre/n_a)  // Calcular y mostrar el promedio de calificaciones en Requerimientos.
	Escribir "Promedio de Cálculo: ", (scal/n_a)  // Calcular y mostrar el promedio de calificaciones en Cálculo.
	Escribir " "
	
	Escribir "Promedio general de las asignaturas: ", ((slo + sre + scal)/n_a)/3  // Calcular y mostrar el promedio general de las asignaturas (promedio de los promedios de cada asignatura).
FinFuncion

Funcion sueldo_categoria
	definir cat Como Caracter
	Definir  suel, suelc,suelag,suelp, bon, bon_au, bon_ag, bon_p Como Real
	Definir c_ax, c_ag, c_p Como Entero
	
	suelc = 0; suelag = 0; suelp = 0
	bon_au = 0; bon_ag = 0; bon_p = 0
	c_ax = 0; c_ag = 0; c_p = 0
	Repetir
		Escribir "Ingrese su categoría: "; leer cat
		si cat <> "auxiliar" &  cat <> "agregado" & cat <> "principal" Entonces
			Escribir "Fin del programa."
		SiNo
			Escribir "Ingrese su sueldo: "; leer suel
			Segun cat Hacer
				"auxiliar":
					bon = (suel * 0.10)
					suelc = suelc + suel
					bon_au = bon_au + bon
					c_ax = c_ax + 1
				"agregado":
					bon = (suel * 0.20)
					suelag = suelag + suel
					bon_ag = bon_ag + bon
					c_ag = c_ag + 1
				"principal":
					bon = (suel * 0.50)
					suelp = suelp + suel
					bon_p = bon_p + bon
					c_p = c_p + 1
			Fin Segun
			Escribir " "
		FinSi
	Hasta Que cat <> "auxiliar" &  cat <> "agregado" & cat <> "principal"
	si c_ax = 0 Entonces
		c_ax = 1
	FinSi
	si c_ag = 0 Entonces
		c_ag = 1
	FinSi
	si c_p = 0 Entonces
		c_p = 1
	FinSi
	
	Escribir "Promedio de sueldos por categoría"
	Escribir " "
	Escribir "Auxiliar: ", (suelc/c_ax)
	Escribir "Agregado: ", (suelag/c_ag)
	Escribir "Principal: ", (suelp/c_p)
	Escribir " "
	Escribir "Promedio de bonos por categoría"
	Escribir " "
	Escribir "Auxiliar: ", (bon_au/c_ax)
	Escribir "Agregado: ", (bon_ag/c_ag)
	Escribir "Principal: ", (bon_p/c_p)
FinFuncion

Funcion viajes_recorrido
	Definir n, c1, c2 como entero
	definir pas, km, ma100, me100 Como Real
	Escribir "Ingrese el número de viajes; "; leer n
	ma100 = 0; me100 = 0; c1 = 0; c2 = 0
	Mientras n <> 0 hacer
		Escribir "Ingrese el valor del pasaje: "; leer pas
		Escribir "Ingrese el recorrido del viaje en km: "; leer km
		si km <= 100 Entonces
			c1 = c1 +1
			me100 = me100 + pas
		SiNo
			c2 = c2 +1
			pas = pas + (pas * 0.20)
			ma100 = ma100 + pas
		FinSi
		Escribir " "
		n = n - 1
	Fin Mientras
	si c1 == 0 Entonces
		c1 = 1
	FinSi
	si c2 == 0 Entonces
		c2 = 1
	FinSi
	Escribir "Cantidad de pasajes con recorrido menor o igual a 100km: ", c1
	Escribir "Promedio del valor de viajes con recorrido menor o igual a 100km: ", (me100/c1)
	Escribir " "
	Escribir "Cantidad de pasajes con recorrido mayor a 100km: ", c2
	Escribir "Promedio del valor de viajes con recorrido mayor a 100km: ", (ma100/c2)
	
FinFuncion

Funcion serie_numeros 
	Definir num, n, i, sum Como Real  // Declarar variables reales para números y suma.
	Definir co Como Entero  // Declarar una variable entera para contar números distintos de cero.
	Dimension num[10000]  // Declarar un arreglo de números con capacidad para 10000 elementos.
	i = 0; co = 0; sum = 0  // Inicializar variables de índice, contador y suma.
	Escribir "Ingrese los números: "  // Mostrar un mensaje para que el usuario ingrese los números.
	
	Repetir  // Iniciar un bucle "Repetir" que se ejecutará hasta que se ingrese un número igual a 0.
		leer n  // Leer y almacenar el número ingresado en 'n'.
		si n <> 0 Entonces  // Comprobar si el número es distinto de cero.
			co = co + 1  // Incrementar el contador de números distintos de cero.
			num[i] = n  // Almacenar el número en el arreglo en la posición 'i'.
		FinSi
		sum = sum + n  // Sumar el número a la suma total.
		i = i + 1  // Incrementar el índice.
	Hasta Que n = 0  // Finalizar el bucle "Repetir" cuando se ingrese un número igual a 0.
	
	Escribir "Números ingresados"  // Mostrar un mensaje indicando que se mostrarán los números ingresados.
	Para i<-0 Hasta (co-1) Con Paso 1 Hacer  // Iniciar un bucle "Para" para mostrar los números ingresados.
		Escribir Sin Saltar num[i], " "  // Mostrar el número en la posición 'i' del arreglo.
	Fin Para  // Finalizar el bucle "Para".
	
	Escribir " "  // Mostrar un espacio en blanco.
	Escribir "Cantidad de números distintos de 0: ", co  // Mostrar la cantidad de números distintos de cero.
	Escribir "Promedio de los números ingresados: ", (sum / co)  // Calcular y mostrar el promedio de los números ingresados.

FinFuncion

Funcion serie_pos_3
	Definir n, nu, sum Como Real  // Declarar variables reales para números y suma.
	Definir co, i, cb Como Entero  // Declarar variables enteras para contar números y un contador de bucle.
	Dimension nu[1000]  // Declarar un arreglo de números con capacidad para 1000 elementos.
	co = 0; sum = 0; i = 0; cb = 0  // Inicializar variables de contador, suma, índice y contador de bucle.
	Escribir "Ingrese los números: "  // Mostrar un mensaje para que el usuario ingrese los números.
	
	Repetir  // Iniciar un bucle "Repetir" que se ejecutará hasta que se ingrese un número negativo.
		leer n  // Leer y almacenar el número ingresado en 'n'.
		cb = cb + 1  // Incrementar el contador de bucle.
		si n > 0 & (n % 3 == 0) Entonces  // Comprobar si el número es positivo y es múltiplo de 3.
			co = co + 1  // Incrementar el contador de números que son múltiplos de 3.
			sum = sum + n  // Sumar el número a la suma total.
		FinSi
		nu[i] = n  // Almacenar el número en el arreglo en la posición 'i'.
		i = i + 1  // Incrementar el índice.
	Hasta Que n < 0  // Finalizar el bucle "Repetir" cuando se ingrese un número negativo.
	
	Escribir "Números ingresados"  // Mostrar un mensaje indicando que se mostrarán los números ingresados.
	Para i<-0 Hasta cb-2 Con Paso 1 Hacer  // Iniciar un bucle "Para" para mostrar los números ingresados.
		Escribir Sin Saltar nu[i], " "  // Mostrar el número en la posición 'i' del arreglo.
	Fin Para  // Finalizar el bucle "Para".
	
	Escribir " "  // Mostrar un espacio en blanco.
	Escribir "Cantidad de números múltiplos de 3: ", co  // Mostrar la cantidad de números que son múltiplos de 3.
	Escribir "Promedio de los números ingresados múltiplos de 3: ", (sum / co)  // Calcular y mostrar el promedio de los números ingresados que son múltiplos de 3.
FinFuncion

Funcion menu_
	Definir menu Como Caracter
	definir v Como Logico
	Dimension menu[14]
	menu[0] ="***    Menú de algoritmos   ***"
	menu[1] =" "
	menu[2] =" 1. Caracter o signo de puntuación   13. Tipos de autobuses       25. Promedio estatura"
	menu[3] =" 2. Número o vocal                   14. Valor por colas          26. Números pares hasta el 100"
	menu[4] =" 3. Valor ascii                      15. Supermercado             27. Suma sucesiva (10 números)"
	menu[5] =" 4. Nombres iguales                  16. Consultorio (Dr. Paez)   28. Edad promedio"
	menu[6] =" 5. Nombre mayor                     17. El baraton               29. Valor por hora"
	menu[7] =" 6. Número mayor                     18. Banco XYZ                30. Somos más (ventas)"
	menu[8] =" 7. Neutro, positivo o negativo      19. Servicio paquetería      31. Calificaciones (Software)"
	menu[9] =" 8. Valor por lápices                20. Peso de alumnos          32. Categorías Unemi"
	menu[10] =" 9. Almacén Somos más (trajes)       21. 4 números                33. Recorridos"
	menu[11] ="10. Almacén Somos más (banquetes)    22. 3 números                34. Números distintos a 0"
	menu[12] ="11. Vinicultores                     23. Dia de la semana         35. Números múltiplos a 3"
	menu[13] ="12. Viaje de estudios (Software)     24. Mes del año              36. Salir"
	
	Para n<-0 Hasta 13 Con Paso 1 Hacer
		Escribir menu[n]
	FinPara
FinFuncion

Algoritmo sin_titulo
	Definir n Como Entero
	Repetir
		v = Verdadero
		Borrar Pantalla
		menu_()
		Escribir " "
		Escribir "Ingrese el índice del algoritmo a ejecutar: "; leer n
		Borrar Pantalla
		Segun n Hacer
			1:
				Escribir "1. Caracter o signo de puntuación"
				caracter_()
				
			2:
				Escribir "2. Número o vocal"
				caracter_2()
			3:
				Escribir "3. Valor ascii"
				valor_a()
			4:
				Escribir "4. Nombres iguales "
				nombres()
			5:
				Escribir "5. Nombre mayor"
				numeros_()
			6:
				Escribir "6. Número mayor"
				numero_mayor()
			7:
				Escribir "7. Neutro, positivo o negativo "
				numero_positivo_negativo()
			8:
				Escribir "8. Valor por lápices"
				cost_lapi()
			9:
				Escribir "9. Almacén Somos más (trajes)"
				promocion_trajes()
			10:
				Escribir "10. Almacén Somos más (banquetes)"
				somos_mas()
			11:
				Escribir "11. Vinicultores"
				vinicultores()
			12:
				Escribir "12. Viaje de estudios (Software)"
				alumnos_viaje()
			13:
				Escribir "13. Tipos de autobuses"
				precio_por_km()
			14:
				Escribir "14. Valor por colas"
				colas_a_pagar()
			15:
				Escribir "15. Supermercado"
				ejercicio_15()
			16:
				Escribir "16. Consultorio (Dr. Paez)"
				ejercicio_16()
			17:
				Escribir "17. El baraton"
				ejercicio_17()
			18:
				Escribir "18. Banco XYZ "
				Ejercicio18()
			19:
				Escribir "19. Servicio paquetería"
				Ejercicio19()
			20:
				escribir "20. Peso de alumnos "
				Ejercicio20()
			21:
				Escribir "21. 4 números"
				Ejercicio21()
			22:
				Escribir "22. 3 números"
				Ejercicio22()
			23:
				Escribir "23. Dia de la semana "
				Ejercicio23()
			24:
				Escribir "24. Mes del año"
				Ejercicio24()
			25:
				Escribir "25. Promedio estatura"
				Ejercicio25()
			26:
				Escribir "26. Números pares hasta el 100"
				Ejercicio26()
			27:
				Escribir "27. Suma sucesiva (10 números)"
				suma_sucesiva()
			28:
				Escribir "28. Edad promedio"
				edad_promedio()
			29:
				Escribir "29. Valor por hora"
				horas_trabajadas()
			30:
				Escribir "30. Somos más (ventas)"
				ventas_dia()
			31:
				Escribir " 31. Calificaciones (Software)"
				notas_alumnos()
			32:
				Escribir "32. Categorías Unemi"
				sueldo_categoria()
			33:
				Escribir "33. Recorridos"
				viajes_recorrido()
			34:
				Escribir "34. Números distintos a 0"
				serie_numeros()
			35:
				Escribir "35. Números múltiplos a 3"
				serie_pos_3()
			De Otro Modo:
				Escribir "Hasta luego.."
				v = Falso
		FinSegun
		Escribir " "
		si v = Verdadero Entonces
			Escribir "Presione una tecla para volver al menú..."
		SiNo
			Escribir "Presione enter para salir..."
		FinSi
		Esperar Tecla
	Mientras Que v = Verdadero
	Borrar Pantalla
	
	//caracter_ //1
	//caracter_2 //2
	//valor_a //3
	//nombres //4
	//numeros_ //5
	//numero_mayor //6
	//numero_positivo_negativo //7
	//cost_lapi //8 
	//promocion_trajes // 9
	//somos_mas //10
	//vinicultores() //11
	//alumnos_viaje() //12
	//precio_por_km() //13
	//colas_a_pagar() //14
	//ejercicio_15 //15
	//ejercicio_16 //16
	//ejercicio_17 //17
	//Ejercicio18() //18
	//Ejercicio19() //19
	//Ejercicio20() //20
	//Ejercicio21() //21
	//Ejercicio22() //22
	//Ejercicio23() //23
	//Ejercicio24() //24
	//Ejercicio25() //25
	//Ejercicio26() //26
	//suma_sucesiva //27
	//edad_promedio //28
	//horas_trabajadas //29
	//ventas_dia //30
	//notas_alumnos // 31
	//sueldo_categoria // 32
	//viajes_recorrido //33
	//serie_numeros //34
	//serie_pos_3 //35
	
FinAlgoritmo
