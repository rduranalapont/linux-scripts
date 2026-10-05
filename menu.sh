#!/bin/bash

#Autor: Rise Duran Alapont
#Proposito: Este es un script que muestra un menu, tambien se puede usar por parametro

#Declaracion de la funcion sobre que hace cada opcion del menu

activar(){
   case $1 in
    1)
      echo "My name is: $0"
      ;;
    2)
      echo "Your name is: $USER"
      ;;
    3)
      echo "Cerrando el script"
      exit 0
      ;;
    *)
      echo "Elige una opcion correcta"
      ;;  
esac
}

#Comprobacion de si se ha pasado una opcion por parametro para saltarse la eleccion del menu

if [ $# -gt 0 ]; then
   activar "$1"

else
#Menu con las opciones disponibles
echo " Menu"
echo "1 - Say my name"
echo "2 - Say your name"
echo "3 - Cerrar script"

read -p "Elige una opcion: " opcion
 activar "$opcion"
fi
