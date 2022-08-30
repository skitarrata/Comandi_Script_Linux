#!/bin/bash
#i descrittori in questo caso particolare sono dei numeri che vengono associati ai file
#e dove i descrittori si usano, sostituiscono l'allias stabilendo un uso con > o <
#ovvero se sono utilizzati per l'output o l'input
#descrittori di default sono gia associati a 0 1 2
#0 per lo standard input
#1 per lo standard output (echo infatti fa uso dello standard output)
#2 per lo standard error (che equivale allo standard output ma per gli errori)
if [ $# = 0 ]; then
	echo "per usare questo script di copia e rimpiazzo, bisogna inserire i nomi di due file"
	echo "ES: $0 sorgente.txt destinazione.txt"
elif ! [ -e $1 ]; then
	echo "il file sorgente non esiste"
elif ! [ -e $2 ]; then
	echo "il file destinazione non esiste, ho provveduto alla sua creazione per il corretto funzionamento dello script"
	touch $2
else
	echo "- $1:"
	cat $1
	echo
	echo "- $2:"
	cat $2
	echo

	exec 3<$1 #con il < il file sarà di input
	exec 4>$2 #con il > il file sarà di output
	i=0
	#il -u sta per leggi riga per riga
	while read -u 3 VAR ; do #quindi il 3 qui significherà che sto leggendo dal file \$1
		array[$i]=$VAR #negli script non è necessario dichiarare gli array
		((i++))
	done

	for ((i=0; i<${#array[@]}; i++)); do
		echo ${array[$i]} 1>&4 #lo standard output è indirizzato sul descrittore 4
		#quindi l'output non scrive a video ma sul file 4
	done
	echo "copia effettuata:"
	echo
        echo "- $1:"
        cat $1
        echo
        echo "- $2:"
        cat $2
        echo
fi
