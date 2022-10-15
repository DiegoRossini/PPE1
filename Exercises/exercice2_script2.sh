# !/usr/bin/bash

ANNEE=$1
MOIS=$2
NUMERO=$3

echo "Les lieux les plus cités sont:" > lieux_plus_cités.txt

grep "Location" $ANNEE*$MOIS*.ann |cut -f 3 | sort | uniq -c | sort -nr | head -n $NUMERO >> lieux_plus_cités.txt
