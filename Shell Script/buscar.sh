#!/bin/bash
##Incompleto
function Insertar ()
{
    echo "Dame el ID: "
    read ID
    echo "Dame el Nombre: "
    read NOMBRE
    echo "Dame la Direccion: "
    read DIRECCION
    echo "Dame la Provincia: "
    read PROVINCIA
    LINEA=`tail -1 alumnos.txt | cut -d'^' -f1`
    echo $LINEA
    while [$ID ]; do
        echo "El ID no puede repetirse"

    done
    echo $ID^$NOMBRE^$DIRECCION^$PROVINCIA >> alumnos.txt

}
opcion=0
while [ $opcion -ne 5 ]; do
    clear
    echo "1:Insertar"
    echo "2:Modificar"
    echo "3:Eliminar"
    echo "4:Consultar"
    echo "5:Salir"
    echo "Elige una opcion"
    read opcion
    case $opcion in
        1*) echo "Has elegido la opcion 1"
            Insertar
            break
            ;;
        2*) echo "Has elegido la opcion 2"
            echo "Elige un Fichero"
            read fichero
            cat $fichero
            break
            ;;
        3*) echo "Has elegido la opcion 3"
            break
            ;;
        *) echo "Introduce una opcion valida"
           break
           ;;
        esac
done
