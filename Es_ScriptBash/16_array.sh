#!/bin/bash

array=(ciao sono saverio e tu?)
#ci sono diversi modi per stampare un array

echo "primo modo:"
for VAR in ${array[@]}; do #le {} stanno a dire che l'array contiene un certo numero di elementi
	echo $VAR
done
echo
echo "secondo modo:" #stamperà tutto l'array in una sola riga
echo ${array[@]}
echo
echo "terzo modo:"
for ((i=0; i<${#array[@]}; i+=1)); do #l'asterisco serve a dare il numero di elementi dell'array
	echo ${array[$i]}
done
echo

