#!/bin/bash

case $1 in
	(0)
		echo "hai inserito 0"
		echo ;;		#potrebbe corrispondere al break che si usa di solito
	(1 | 2)
		echo "hai inserito 1 o 2"
		echo ;;
	(*)
		echo "parametro non consentito, inserisci un numero da 0 a 2"
esac
