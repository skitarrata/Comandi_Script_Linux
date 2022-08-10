#!/bin/bash
# questo scritto sopra è un commento speciale, serve per chiamare l'interprete per i file sh
# lo si utilizza per richiedere file per l'interpretazione di parole chiave
# quindi in teoria per i comandi comuni lo si potrebbe omettere, ma è buona norma metterlo

VAR=ciao_a_tutti # dichiaro una variabile d'ambiente come unica stringa
VAR2=../ComandiLinux.txt

echo $VAR # chiamo la mia variabile con il dollaro
cat $VAR2
