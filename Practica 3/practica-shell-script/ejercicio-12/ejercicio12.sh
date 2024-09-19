#!/bin/bash
#Solicita dos numeros por teclado y imprime la multiplicacion,suma y resta de ambos
multiplicacion(){
	local result=$(($1 * $2))
	echo "El resultado de multiplicar $[$1] y  $[$2] es $result" 
}
#!/bin/bash
# Solicita dos números por teclado y muestra la multiplicación, suma y resta de ambos

multiplicacion(){
    local result=$(($1 * $2))
    echo "El resultado de multiplicar $1 y $2 es $result"
}
#!/bin/bash
# Solicita dos números por teclado y muestra la multiplicación, suma y resta de ambos

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

echo "Ingrese dos números:"
read numero1 numero2

multiplicacion $numero1 $numero2
suma $numero1 $numero2
resta $numero1 $numero2

# Comparación para encontrar el mayor número
if [ "$numero1" -gt "$numero2" ]; then
    mayor=$numero1
elif [ "$numero1" -lt "$numero2" ]; then
    mayor=$numero2
else
    mayor=$numero1
fi

echo "El mayor número es $mayor"

