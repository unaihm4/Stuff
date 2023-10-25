#!/bin/bash


##################################################################
# INSERTAR EN EL ARRAY
##################################################################
function insertarArray() {
	for ((i=0; i<$LONGITUD; i++)); do
		read -p "Introduce un dato: " DATO
		ARRAY[$i]=$DATO
	done
}

##################################################################
# IMPRIMIR EL ARRAY
##################################################################
function imprimirArray() {
	echo "El array introducido es " ${ARRAY[@]}
}

##################################################################
# ORDENAR EL ARRAY
##################################################################
function ordenarArray() {
	for ((i=0; i<$LONGITUD; i++)); do
		for ((j=$i+1; j<$LONGITUD; j++)); do
			if [[ ${ARRAY[$i]} > ${ARRAY[$j]} ]]; then
				AUX=${ARRAY[$i]}
				ARRAY[$i]=${ARRAY[$j]}
				ARRAY[$j]=$AUX
			fi
		done
	done
}

##################################################################
# AÑADIR EN EL ARRAY
##################################################################
function anadirArray() {
	read -p "Añade un nuevo elemento al array: " NUEVO
	MAX=${#ARRAY[@]}
	ARRAY[$MAX]=$NUEVO	
}

##################################################################
# ELIMINAR DEL ARRAY
##################################################################
function eliminarArray() {
	read -p "Introduce la posición del array a eliminar: " POSICION
	ARRAY[$POSICION]=""	
}

##################################################################
# IMPRIMIR POSICION
##################################################################
function imprimirPosicion() {
	read -p "Introduce la posición del array a imprimir: " POSICION
	echo "El valor de la posición $POSICION es: " ${ARRAY[$POSICION]}
}

##################################################################
# ELIMINAR DEL ARRAY DE MANERA CORRECTA
##################################################################
function eliminarArrayCorrecto() {
	read -p "Introduce la posición del array a eliminar: " POSICION
	echo "Longitud..."${#ARRAY[@]}
	for ((i=$POSICION; i<${#ARRAY[@]}; i++)); do
		echo $i
		ARRAY[$i]=${ARRAY[$i+1]}
	done
}

##################################################################
# IMPRIMIR EL ARRAY INDICE VALOR
##################################################################
function imprimirArrayIndiceValor() {
	for ((i=0; i<${#ARRAY[@]}; i++)); do
		echo "En la posición $i está el valor: " ${ARRAY[$i]}
	done
}


##################################################################
# ELIMINAR DEL ARRAY CON UNSET
##################################################################
function eliminarArrayUnset() {
	read -p "Introduce la posición del array a eliminar: " POSICION
	unset ARRAY[$POSICION]
}

##################################################################
# ELIMINAR DEL ARRAY SIN HUECOS
##################################################################
function eliminarArraySinHuecos() {
	read -p "Introduce la posición del array a eliminar: " POSICION
	unset ARRAY[$POSICION]
	for i in "${!ARRAY[@]}"; do
		ARRAY_NUEVO+=( "${ARRAY[i]}" )
	done
	ARRAY=("${ARRAY_NUEVO[@]}")
	unset ARRAY_NUEVO
}

read -p "Introduce la longitud del array: " LONGITUD

insertarArray
imprimirArray

ordenarArray
imprimirArray

anadirArray
imprimirArray

#eliminarArray
#imprimirArray
#imprimirPosicion
#imprimirPosicion

#imprimirArrayIndiceValor
#eliminarArrayCorrecto
#imprimirArrayIndiceValor

#imprimirArrayIndiceValor
#eliminarArrayUnset
#imprimirArrayIndiceValor
#imprimirArray
#imprimirPosicion
#imprimirPosicion

imprimirArrayIndiceValor
eliminarArraySinHuecos
imprimirArrayIndiceValor
