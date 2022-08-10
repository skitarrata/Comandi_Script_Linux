#!/bin/bash
# il \ serve per rendere i caratteri speciali caratteri normali

echo " \$* (dentro apici): $*"  #stampa una stringa che comprende tutti gli argomenti tranne l'argomento 0 
echo " \$* (fuori gli apici): " $* #rappresenta l'insieme di tutti gli argomenti, stampandoli
echo " \$@ (dentro apici): $@" #stampa una lista che comprende tutti gli argomenti tranne l'argomento 0 (si puo ciclare) 
echo " \$@ (fuori gli apici): " $@ #rappresenta l'insieme di tutti gli argomenti, stampandoli
echo " \$\$ (dentro apici): $$" #restituisce il PID del processo attualmente aperto
echo " \$\$ (fuori gli apici): " $$
echo " --> hai inserito $# argomenti (con \$#)" #restituisce il numero di argomenti passati
