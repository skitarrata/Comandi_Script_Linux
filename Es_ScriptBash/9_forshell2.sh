#!/bin/bash

echo "cosa accade ciclando con \$*"
for var1 in "$*" ; do
	echo "var1 = $var1"
done
echo
echo "cosa accade ciclando con \$@"
for var2 in "$@" ; do
	echo "var2 = $var2"
done

echo
echo "\$* : $*"
echo "\$@ : $@"
