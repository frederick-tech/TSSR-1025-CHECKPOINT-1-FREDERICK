#!/usr/bin/env bash

#Nom de
 
if [ $# -eq 0 ]
	then
		echo "Il manque les noms d'utilisateurs en argument - Fin du script."
		exit 1
fi

for utilisateur in $@
do
if cat /etc/passwd | grep $utilisateur >/dev/null
	then
		echo "L'utilisateur $utilisateur existe déjà"
	else
		useradd $utilisateur

		if cat /etc/passwd | grep $utilisateur >/dev/null
			then
				echo "L'utilisateur $utilisateur a été crée."
			else
				echo "Erreur à la création de l'utilisateur $utilisateur"
		fi
fi
done
