#!/bin/bash
#26 febrero 2021 
#alejandro capra
#Ejercicio 1
#Nos pide la edad y nos dice si es mayor de edad o menor


read -p "Cual es tu edad: " edad  
mayorEdad=18

if [[ $edad -ge $mayorEdad ]]; then
    echo "Usted es mayor de edad"

else
    echo "Usted es menor de edad"
fi

