#!/bin/bash
#26 febrero 2021 
#alejandro capra
#Ejercicio 1
#Mirar si el directorio pasado por parametro ya existe si es si, que muestre un mensaje. Si es no lo debe crear y decir que lo ha creado


read -p "Buscar directorio : " directorio  
buscarDirectorio=$(find . $directorio)
echo $buscarDirectorio


