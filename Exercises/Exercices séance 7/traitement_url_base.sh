#!/usr/bin/env bash

#===============================================================================
# VOUS DEVEZ MODIFIER CE BLOC DE COMMENTAIRES.
# Ici, on décrit le comportement du programme.
# Indiquez, entre autres, comment on lance le programme et quels sont
# les paramètres.
# La forme est indicative, sentez-vous libres d'en changer !
# Notamment pour quelque chose de plus léger, il n'y a pas de norme en bash.
#===============================================================================

if [ $# -ne 1 ]
then
	echo " ce programme demande un argument "
	exit
fi

fichier_urls=$1 # le fichier d'URL en entrée
fichier_tableau=$2 # le fichier HTML en sortie
header=$(curl -I )

# !!!!!!
# ici on doit vérifier que nos deux paramètres existent, sinon on ferme!
# !!!!!!


# modifier la ligne suivante pour créer effectivement du HTML
echo "
	<html>
		<head>
			<meta charset = "utf-8"/>
			<title>TABLEAU</title>
		</head>
		<body>
			<table border="6px" border-color="#008080">
				<tr>
					<th>numéro de ligne</th>
					<th>Code de retour</th>
					<th>URL</th>
				</tr>
				<tr>
					<td>1</td>
					<td>200</td>
					<td>www.perdu.com</td>
				</tr>
			</table>
		</body>
	</html>" > tableau.html

lineno=1;

while read -r line;
do
	echo "ligne $lineno: $line";
	lineno=$((lineno+1));
done < $fichier_urls