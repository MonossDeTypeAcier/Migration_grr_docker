# Migration_grr_docker
Migration d'une installation existante de grr sur docker 

## Initialisation

Pour utiliser ce projet, il vous faudra une installation de GRR, que vous copierait dans un dossier "html" que vous mettrez dans le même dossier que le projet.
il faudra adapter le fichier "connect.inc.php" à la nouvelle installation.

Adaptez le docker compose à votre installation.

Faites un dump de la base de données (mariadb-dump / mysqldump)

installer make.


## Lancement 

Au premier lancement, faite un "make install" pour initialiser le docker et le créer.

Après que les deux docker se soit créé importez le dump de la base de données avec la commande suivantte :
docker exec -it nomdudocker mariadb -u root -p grr < fichier_dump.sql
