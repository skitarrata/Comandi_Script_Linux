#!/bin/bash

if ! [ $# = 1 ]; then	#l'operatore not (!) equivale a scrivere (!=) nella uguaglianza
	echo "nessun argomento inserito"
elif ! [ -e $1 ]; then #equivale all'else if in C per un altra condizione, il flag -e sta per se non esiste il file
	echo "file non trovato"
else
	ls -l $1
fi
