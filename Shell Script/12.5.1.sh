#!/bin/bash
read -p "Introduce un Valor " n1 
read -p "Introduce un Valor " n2 
read -p "Introduce un Valor " n3
if [ $n1 -gt $n2 ] && [ $n1 -gt $n3 ]; then
	if [ $n2 -gt $n3 ]; then
		echo "El mayor es $n1 el de en medio es $n2 y el menor es $n3"
	fi
	if [ $n3 -gt $n2 ]; then
		echo "El mayor es $n1 el de en medio es $n3 y el menor es $n2"
	fi
elif [ $n2 -gt $n1 ] && [ $n2 -gt $n3 ]; then
	if [ $n1 -gt $n3 ]; then
		echo "El mayor es $n2 el de en medio es $n1 y el menor es $n3"
		fi
	if [ $n3 -gt $n1 ]; then
		echo "El mayor es $n2 el de en medio es $n3 y el menor es $n1"
	fi
elif [ $n3 -gt $n1 ] && [ $n3 -gt $n2 ]; then
	if [ $n1 -gt $n2 ]; then
		echo "El mayor es $n3 el de en medio es $n1 y el menor es $n2"
	fi
	if [ $n2 -gt $n1 ]; then
		echo "El mayor es $n3 el de en medio es $n2 y el menor es $n1"
	fi
fi
 

