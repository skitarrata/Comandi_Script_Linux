#!/bin/bash
#la sintassi del if nella shell comprende il then per indicare l'inizio del blocco fi per indicare la fine del blocco
#quindi funziona da identazione
VAR=fileprova.txt
if [ $# != 2 ]; then #ATTENZIONE nelle parentesi [] gli argomenti non devono toccare le parentesi
	echo "limite argomenti non corretto, obligatorio 2 argomenti"
else
	if grep $1 $VAR; then
		echo "trovata similitudine"
	else
		echo "non ho trovato nulla"
	fi
	if grep $2 $VAR; then
		echo "trovata similitudine"
	else
		echo "non ho trovato nulla"
	fi
fi
