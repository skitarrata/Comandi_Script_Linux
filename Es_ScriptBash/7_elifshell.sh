#!/bin/bash

if ! [ $# = 1 ]; then	#l'operatore not (!) equivale a scrivere (!=) nella uguaglianza
	echo "nessun argomento inserito"
elif ! [ -e $1 ]; then #equivale all'else if in C per un altra condizione, la flag -e serve per verificare l'esistenza del nome
	echo "non esiste"
else
	ls -l $1
fi
