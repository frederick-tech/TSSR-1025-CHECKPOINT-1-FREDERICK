1. On vérifie que le nombre d'argument est égal à 0
	- Si le nombre d'utilisateur est égal à 0 alors on affiche un message d'erreur et on quitte le script.
	- Sinon, on continue.
2. On crée une boucle for pour effectuer les opérations suivantes sur chaque argument
3. Pour chaque argument  "utilisateur" on vérifie l'existence de ce dernier dans le fichier /etc/passwd
	- Si il existe, on affiche le  message d'erreur "L'utilisateur $utilisateur existe déjà" mais le script continue
	- S'il n'existe pas, nous créeons l'utilisateur avec la commande useradd (commande non interactive)
		1. Une fois l'utilisateur de la liste d'arguments crée, nous vérifions l'existence de ce dernier dans le fichier /etc/passwd une nouvelle fois
		2. Si ce dernier existe, on affiche le message "L'utilisateur $utilisateur a été crée."
		3. Si il n'existe pas, on affiche le message "Erreur de la création de l'utilisateur $utilisateur"