#!/bin/bash
	echo "1:Reemplazar"
	echo "2:Consultar"
	echo "3:Salir"
	echo "Elige una opcion"
	read opcion
	case $opcion in
		1*) echo "Has elegido la opcion 1"
		    echo "Introduce el patron a buscar"
		    read PATRON
		    echo "Introduce el patron a buscar"
		    read REEM
		    sed -e s/$PATRON/$REEM/g PLANTILLA_PRACTICA_03/alumnos.txt
            	    ;;
	        2*) echo "Has elegido la opcion 2"
        	    cat PLANTILLA_PRACTICA_03/alumnos.txt
        	    ;;
        	3*) echo "Has elegido la opcion 3 Hasta Luego"
        	    ;;
        	*) echo "Introduce una opcion valida"
        	   ;;
        esac	

