#!/bin/bash
#in questo caso faccio il sort fin quando non trovo in una riga, SOLO! la parola FINE
sort << FINE
ciao so
np
zanzara
posso metterci FINE
ecc no
anm e babb
FINE
echo
sort << FINE
4
8
1
9
-3
0
134
FINE
echo
echo "questo ultimo sort è lessicografico non numerico"
