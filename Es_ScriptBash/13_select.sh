#!/bin/bash

#il select è simile ad un while e lo si usa con una console, si possono inserire solo numeri per il suo funzionamento
#il -e serve per verificare se esiste
#il -d serve per controllare se la mia variabile è una cartella
#il -x serve per controllare se il file/directory o altro sia eseguibile (non è richiesto l'amministratore)

PS3="scegli: " #questa è una console di input, simula i comandi
select VAR in $(ls | grep 1); do #restituisce i valori del comando ls concatenando il grep 1 dei nomi
	if [ -e $VAR ] && [ -d $VAR ] && [ -x $VAR ]; then
		cd $VAR
		echo "ho aperto la cartella $VAR"
		ls
		break #esco dal select
	else
		echo "$VAR non è una cartella"
	fi
done
