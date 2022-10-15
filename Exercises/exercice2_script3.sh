# !/usr/bin/bash

ANNEE="*"
MOIS="*"
NUMERO=$1

echo "Les lieux les plus cités sont:" > lieux_plus_cités.txt

grep "Location" $ANNEE_$MOIS.ann |cut -f 3 | sort | uniq -c | sort -nr | head -n $NUMERO >> lieux_plus_cités.txt
