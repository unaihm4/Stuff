#!/bin/bash
nombres=("Daniel Balmaseda Conejo" "Alberto Cabrera" "Francisco Julian" "Daniel Granados" "Unai Herrero" "Francisco Hormigos" "Nabil Koussal" "Roberto Martin" "Oscar Muñoz" "Jesus Ocampos" "Francisco Pardo" "Dennis Alexandru" "Javier Recuero" "Eduardo Romero" "Carlos Romo" "Diego Rubio" "Alejadro Sanchez" "Carlos Vazquez" "Naomi Vilchez" "Jaime Villalba")
tamanio=${#nombres[@]}
random=$(($RANDOM % $tamanio))
echo ${nombres[$random]}
