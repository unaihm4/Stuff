#!/bin/bash
nombres=$(ls Fotos/)
readarray ARRAY <<< $nombres
tamanio=${#ARRAY[@]}
random=$(($RANDOM % $tamanio))
echo ${ARRAY[$random]} | cut -d "." -f1
