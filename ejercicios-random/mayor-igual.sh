#!/bin/bash
#26 febrero 2021 
#alejandro capra
#Ejercicio 1
#pasados 2 valores por parametro, indique cual de lo dos es mayor o si son iguales


read -p "Escribe el primer parametro " primerParametro  
read -p "Escribe el segundo parametro " segundoParametro

if [[ $primerParametro -eq $segundoParametro ]]; then
    echo "Los dos parametros son iguales"
elif [[ $primerParametro -gt $segundoParametro ]]; then
    echo "$primerParametro,el 1 parametro, es mas grande que $segundoParametro"
else
    echo "$segundoParametro,el 2 parametro, es mas grande que $primerParametro"
fi

