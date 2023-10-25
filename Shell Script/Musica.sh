#!/bin/bash
linea=$(head -1 Musica.db | sed "s/\^/ /g")
lineas_totales=$(wc -l Musica.db | cut -d" " -f1)
let lineas_utiles=$lineas_totales-1
id=$(tail -$lineas_utiles Musica.db | cut -d"^" -f1)
nombre=$(tail -$lineas_utiles Musica.db | cut -d"^" -f2)
ano=$(tail -$lineas_utiles Musica.db | cut -d"^" -f3)
tipo=$(tail -$lineas_utiles Musica.db | cut -d"^" -f4)
numero=$(tail -$lineas_utiles Musica.db | cut -d"^" -f5)
grupo=$(tail -$lineas_utiles Musica.db | cut -d"^" -f6)
readarray array_id <<< $id
readarray array_nombre <<< $nombre
readarray array_ano <<< $ano
readarray array_tipo <<< $tipo
readarray array_numero <<< $numero
readarray array_grupo <<< $grupo
clear
function Menu_Principal ()
{
    echo "Menu Principal"
    echo "=============="
    echo "1:Alta grupos e interpretes"
    echo "2:Modificar grupos o interpretes"
    echo "3:Eliminar grupos o interpretes"
    echo "4:Consultar grupos e interpretes"
    echo "5:Informes"
    echo "6:Salir"
    echo "Elige una opcion del 1 al 6"
    read opcion
    case $opcion in
        1*) clear
            echo "Has elegido la opcion 1"
            read -p "Añade un Identificador: " NUEVO
	        MAX=${#array_id[@]}
	        array_id[$MAX]=$NUEVO	
            read -p "Introduzca el nombre: " name
            read -p "Introduzca el año de creacion: " year
            read -p "Introduzca el tipo de musica: " music
            read -p "Introduzca el numero de miembros: " number
            read -p "¿Es Grupo o Interprete?[G/I]: " inter
            echo "$NUEVO^$name^$year^$music^$number^$inter" >> Musica.db
            echo "El Grupo o Interprete ha sido dado de alta con el identificador nº $NUEVO"
            ;;
        2*) clear
            echo "Has elegido la opcion 2"
            echo
            ;;
        3*) clear
            echo "Has elegido la opcion 3"
            echo "ELIMINA GRUPO O INTERPRETE"
            echo "============================"
            read -p "Introduzca el nombre del interprete que desee eliminar: " elim
            sed -i "/$elim/d" Musica.db

            ;;
        4*) clear
            echo "Has elegido la opcion 4"
            echo "CONSULTAR GRUPO O INTERPRETE"
            echo "============================"
            echo "ID   Nombre"
            echo "===  ======"
            while read y
            do
                cut -d"^" -f 1,2 | sed -e "s/\^/     /g"
            done < Musica.db
            ;;
        5*) clear
            echo "Has elegido la opcion 5"
            echo "Submenu Informes"
            echo "=============="
            echo "1:Informe de grupos ordenados por año descendente"
            echo "2:Informe de Interpretes y grupos por genero"
            echo "3:Volver al menu principal"
            echo "Elige una opcion del 1 al 3"
            read option
            case $option in
                1*) echo "Año       ID          Titulo"
                    echo "===       ===         ======="
                    echo ${array_ano[6]}  
                    echo ${array_ano[7]}
                    echo ${array_ano[2]}
                    echo ${array_ano[3]}
                    echo ${array_ano[1]}
                    echo ${array_ano[5]}
                    echo ${array_ano[4]}
                    ;;
                2*) echo "Genero         Numero Interpretes"
                    echo "======         =================="
                    echo ${array_tipo[@]}
                    ;;
                3*)Menu_Principal
                   ;;
            esac

            ;;
        6*) clear
            echo "Has elegido la opcion 6 Hasta Luego"
            break
            ;;
    esac
}
Menu_Principal
