#!/bin/bash
#26 febrero 2021 
#alejandro capra
#Ejercicio 1
#Que edad con edad de nacimiento


read -p "Cual es tu año de nacimiento: " anioNac
anioActual=$(date +"%Y")
edad=$(( $anioActual - $anioNac ))
echo "tu edad es $edad años"
