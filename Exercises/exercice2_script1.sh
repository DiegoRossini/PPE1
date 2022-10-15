# !/usr/bin/bash

echo "Les lieux les plus cités sont:" > lieux_plus_cités.txt

grep "Location" *.ann |cut -f 3 | sort | uniq -c | sort -nr >> lieux_plus_cités.txt
