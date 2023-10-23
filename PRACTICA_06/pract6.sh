#!/bin/bash
read -p "Indique el fichero base: " fichero
fichero="Usuarios.txt"

Cabecera=$(head -1 $fichero | sed "s/\^/ /g")
lineas_totales=$(wc -l $fichero | cut -d" " -f1)
let lineas_utiles=$lineas_totales-1

usuario=$(tail -$lineas_utiles $fichero | cut -d"^" -f1)
passwd=$(tail -$lineas_utiles $fichero | cut -d"^" -f2)
grupo=$(tail -$lineas_utiles $fichero | cut -d"^" -f3)
accion=$(tail -$lineas_utiles $fichero | cut -d"^" -f4 | cut -d"A" -f2)

readarray array_user <<< $usuario
readarray array_passwd <<< $passwd
readarray array_grupo <<< $grupo
readarray array_accion <<< $accion

for((i=0; i<${#array_accion[@]}; i++));do
	if [ "$(echo ${array_accion[@]:$i:1})" == "J" ];then

		if [ ! $(grep ${array_user[@]:$i:1} /etc/passwd | cut -d':' -f1) ];then
			echo "El usuario ${array_user[@]:$i:1} no existe"
		else
			echo "Se eliminará al usuario: ${array_user[@]:$i:1}"
			userdel -f ${array_user[@]:$i:1}
		fi

	elif [ "$(echo ${array_accion[@]:$i:1})" == "LT" ];then

		#Comprobación de grupos
		if [ ! $(grep ${array_grupo[@]:$i:1} /etc/group | cut -d':' -f1) ];then
			echo "Se creará ${array_grupo[@]:$i:1} como grupo"
			groupadd ${array_grupo[@]:$i:1}
		fi

		#Comprobación de usuarios
		if [ ! $(grep ${array_user[@]:$i:1} /etc/passwd | cut -d':' -f1) ];then
			echo "Se creará al usuario: ${array_user[@]:$i:1}"
			valor_grupo=$(grep ${array_grupo[@]:$i:1} /etc/group | cut -d":" -f3)
			useradd ${array_user[@]:$i:1} -g $valor_grupo -p ${array_passwd[@]:$i:1}
		else
			echo "El usuario ${array_user[@]:$i:1} ya existe"
		fi
	fi
done
