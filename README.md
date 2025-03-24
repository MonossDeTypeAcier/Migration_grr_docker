# Migration de GRR vers Docker

Ce projet permet de migrer une installation existante de GRR vers un environnement Docker.
## Pré-requis

Avant de commencer, assurez-vous d’avoir :

- Une installation existante de **GRR**.

- Un dossier **html** contenant l’installation de GRR, placé dans le répertoire du projet.

- Un fichier **connect.inc.php** adapté à la nouvelle installation.

- Un dump de la base de données (MariaDB ou MySQL) obtenu via **mariadb-dump ou mysqldump**.

- Docker, Docker Compose et Make installés sur votre machine.

- Un fichier docker-compose.yml configuré selon votre installation.

## Installation et Lancement

### Initialisation du conteneur
Exécutez la commande suivante pour créer et initialiser l’environnement Docker :
```
make install
```
En fonction de votre installation de **docker compose**, vous devrez peut-être modifier la ligne correspondante dans le **Makefile**.

Import de la base de données
Une fois les conteneurs créés et en cours d'exécution, importez le dump de la base de données avec la commande suivante :
```sh
 docker exec -it <nom_du_conteneur> mariadb -u root -p grr < fichier_dump.sql
```
Remplacez <nom_du_conteneur> par le nom réel du conteneur MariaDB/MySQL.

### Personnalisation

- **Modification de la connexion à la base de données**
Assurez-vous que le fichier connect.inc.php pointe vers la base de données hébergée dans le conteneur.

- **Configuration de Docker Compose**
Adaptez le fichier docker-compose.yml en fonction de votre environnement et de vos besoins.
