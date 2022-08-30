#!/bin/bash

if ! [ $# = 3 ]; then
	echo "per usare correttamente questo script bisogna usare una parola più due numeri come argomento"
else
	S=$1
	echo ${S:$2:$3} # sintassi ${stringa:offset:lunghezza}
	#ES: ${gianluca:3:4} = nluc
	echo
	echo "lunghezza totale della stringa $S: ${#S}" #per la dimensione della stringa
fi
