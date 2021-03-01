# Shell script - BASH

Los scripts tienen que tener permisos de ejecucion y los llamamos con ./nombre-del-script.sh

**Comentarios:**
Bash ignora todo lo escrito en la línea después de la marca de almohadilla ( #). La única excepción a esta regla es cuando la primera línea del guión comienza con los #!personajes. Esta secuencia de caracteres se llama Shebang y se utiliza para indicarle al sistema operativo qué intérprete utilizar para analizar el resto del archivo.

Los comentarios se pueden agregar al principio de la línea o en línea con otro código:

# This is a Bash comment.
echo "This is Code" # This is an inline Bash comment.
Dupdo
El espacio en blanco después de la marca de almohadilla no es obligatorio, pero mejorará la legibilidad del comentario.

**Variables:**


**Comillas:**

Las comillas dobles "" tiene reservados caracteres especiales.
Para usar comillas dobles "" tenemos que usar una barra invertida  \ antes de un caracter especial. 

Las comillas simples '' no toman en cuenta los caracteres reservados.

**Parametros:**


script.sh parametro1 parametro2 parametro3

$0    corresponde al nombre del script (script.sh)
$1    parametro1  
$2    parametro2
$3    parametro3
$n    Decimo parametro
${n}  Para parametros superiores a 10

$#    Numeros de parametros pasados al script (sin contar el nombre del script).
$?    Un valor numerico que te identifica si lo ultimo que se ejecuto fue bien o fue mal (si es !=0 indica error, si es == 0 indica que fue correcto).
$*    Cadena de parametros entera (con el nombre del script).
$@    Array de parametros(sin el nombre del script) 

**Prompt**

Permite guardar lo que introduce el usuario como variable
Se activa al pulsar el enter

echo "Introduce un nombre"
read nombre
echo "TU nombre es $nombre"

read -p "Introduce tu apellido: " apellido                  #Sirve para que el prompt aparesca al lado del echo
echo "Tu apellido es $apellido"

read -s -p "Introduce tu contraseña" contraseña             #Sirve para introducir contraseñas
echo "Tu contraseña es $contraseña"

**Operaciones**

Numeros enteros

    let num=$1+$2         # parecido a js -- SIN ESPACIOS SI NO DA ERORR

    num=$((num1 + num2))    # utiliza esto
    num=$(($num1 + $num2))  # esto también funciona    

    num=$(expr $1 + $2)     # forma vieja

**if**

extructura 

if [[ $VAR1 operador $VAR2 ]]; then
    #hace algo
elif [[ $VAR1 operador $VAR2 ]]; then
    #hace otra si no se cumple el primer if
else
    #hace otra cosa si no se cumple ninguna de las condiciones anteriores
fi

-n VAR - True if the length of VAR is greater than zero.
-z VAR - True if the VAR is empty.

STRING1 = STRING2 - True if STRING1 and STRING2 are equal.
STRING1 != STRING2 - True if STRING1 and STRING2 are not equal.

INTEGER1 -eq INTEGER2 - True if INTEGER1 and INTEGER2 are equal.
INTEGER1 -gt INTEGER2 - True if INTEGER1 is greater than INTEGER2.
INTEGER1 -lt INTEGER2 - True if INTEGER1 is less than INTEGER2.
INTEGER1 -ge INTEGER2 - True if INTEGER1 is equal or greater than INTEGER2.
INTEGER1 -le INTEGER2 - True if INTEGER1 is equal or less than INTEGER2.

-h FILE - True if the FILE exists and is a symbolic link.
-r FILE - True if the FILE exists and is readable.
-w FILE - True if the FILE exists and is writable.
-x FILE - True if the FILE exists and is executable.
-d FILE - True if the FILE exists and is a directory.
-e FILE - True if the FILE exists and is a file, regardless of type (node, directory, socket, etc.).
-f FILE - True if the FILE exists and is a regular file (not a directory or device).


if [[ $VAR1 -ge $VAR2 ]] CONDICION [[ $VAR1 -ge $VAR3 ]] then
    #hace algo
fi

Condicion
    &&         AND
    ||         OR



**tips**
