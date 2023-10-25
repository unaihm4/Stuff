#!/bin/bash
read -p "Introduce una cadena: " CADENA
LONGITUD=${#CADENA}
for ((i=0;i < $LONGITUD ;i++))
do
    echo ${CADENA[@]:i:1}
done
echo " "
for ((i=$LONGITUD-1; i >=0 ; i--))
do  
    echo ${CADENA[@]:i:1}
done
