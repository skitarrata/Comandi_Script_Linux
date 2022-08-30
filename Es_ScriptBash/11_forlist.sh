#!/bin/bash

if ! [ $# = 3 ]; then
	echo "inserire 3 argomenti"
else
	#tra parentesi nel for equivale a scrivere \$@ inoltre le [] diventano argomenti
	for VAR in [ $1 $2 $3 ]; do
		echo "VAR = $VAR"
	done
fi
echo
echo "NB: le [] in questo caso non sono di sintassi, ma argomenti della lista"
