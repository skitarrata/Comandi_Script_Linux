#!/bin/bash

i=0
while ! [ $i = $# ]; do
	var=$* #var uguale alla stringa che contiene tutti i parametri
	echo "$i = $var"
	((i++)) #tutte le operazioni matematiche vanno fatte tra le doppie ()
done
