#!/bin/bash
#El siguiente programa recibe tres parametros como entrada el cual el primero es el operador y los#restantes los operandos.

multiplicacion(){
    local result=$(($1 * $2))
    echo "El resultado de multiplicar $1 y $2 es $result"
}

suma(){
    local result=$(($1 + $2))
    echo "El resultado de sumar $1 con $2 es: $result"
}

resta(){
    local result=$(($1 - $2))
    echo "El resultado de restar $1 con $2 es: $result"
}
division(){
	if [ "$2" -eq 0 ]; then
		echo "Error, no se puede dividir por 0"
		exit 1
	fi
	local result=$(($1 * $2))
	echo "El resultado de dividir $1 con $2 es $result"
}

read -p "Ingrese el operador de la ecuacion: " operador
read -p "Ingrese los dos operandos separados por un espacio: " op1 op2

#!/bin/bash
#if [ "$#" -ne 3 ]; then
#	echo "Error, debe ingresar dos operandos y un operador."
#	exit 1
#fi

case $operador in
	\*)
	division $op1 $op2
	;;
	+)
	suma $op1 $op2
	;;
	-)
	resta $op1 $op2
	;;
	*)
	multiplicacion $op1 $op2
	;;
esac
