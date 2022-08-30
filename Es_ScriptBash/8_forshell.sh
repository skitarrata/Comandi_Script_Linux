#!/bin/bash

if [ $# = 0 ]; then
    echo "argomenti non definiti"
fi
for VAR in $@ ; do
    if ! [ -e $VAR ]; then
        echo "il file non esiste"
    else
        echo "file trovato"
	echo
        cat $VAR
    fi
done
