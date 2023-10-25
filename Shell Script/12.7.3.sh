#!/bin/bash
ARRAY=(1 2 3 4 5 6 7 8 9 10)
suma=$((${ARRAY[0]}+${ARRAY[1]}+${ARRAY[2]}+${ARRAY[3]}+${ARRAY[4]}+${ARRAY[5]}+${ARRAY[6]}+${ARRAY[7]}+${ARRAY[8]}+${ARRAY[9]}))
echo "La suma de los elementos es:  $suma"
total=$(($suma/10))
echo "La media es: $total"
