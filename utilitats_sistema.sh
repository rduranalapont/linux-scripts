#!/bin/bash

# Funció: benvinguda
# Descripció: muestra un mensaje de bienvenida pidiendo por parametro el nombre del usuario

benvinguda() {
local nom="$1"
echo "Hola ${nom}, bienvenido"
}
 
# Funció: comprova_usuari
# Descripció: comprueba si un usuario existe en el sistema pidiendo por parametro el usuario

comprova_usuari() {
local usuari="$1"
 
if grep -q "^${usuari}:" /etc/passwd; then
echo "L'usuari '${usuari}' existe en el sistema."
else
echo "L'usuari '${usuari}' NO existe en el sistema."
fi
}
 
# Funció: calculadora_espai
# Descripció: muestra el espacio libre de la particion /

calculadora_espai() {
echo
echo "Espacio disponible en la particion (/):"
df -h /
}
 




 
# Pedir el nombre del alumno
read -p "Introduce tu nombre: " alumne
benvinguda "$alumne"
 
echo
 
# Demanar usuari del sistema
read -p "Introduce el nombre del usuario en el sistema: " usuari
comprova_usuari "$usuari"
 
echo
 
# Mostrar espai disponible
calculadora_espai
