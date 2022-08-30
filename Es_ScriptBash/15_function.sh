#!/bin/bash

function filegrep ()
{
	echo "Function: "
	#gli argomenti che usiamo sotto, non sono quelli usati ad input quando mandiamo il comando bash
	#ma rappresentano gli argomenti passati alla funzione quando viene chiamata
	find . -name $1 -exec grep $2 {} \; ;
	#cerca nella cartella corrente il nome del file o cartella con l'argomento 1
	#ed esegui il comando grep con il secondo argomento nel file di testo tra {}
	#che in questo caso non c'è
}

if ! [ $# = 2 ]; then
	echo "inserire 2 argomenti per usare la prima funzione"
else
	filegrep $1 $2
fi

#esempio per comprendere al meglio ciò che ho scritto sopra riguardo agli argomenti
if [ $# = 3 ]; then
        filegrep $1 $3
fi
