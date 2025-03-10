# TP Docker

## Installation du projet

### Prérequis

Avant d'installer le projet, assure-toi d'avoir Docker et Docker Compose installés sur ta machine. Si ce n'est pas déjà fait, tu peux suivre la [documentation officielle de Docker](https://docs.docker.com/get-docker/) et celle de [Docker Compose](https://docs.docker.com/compose/install/) pour les installer.

### Étapes d'installation

1. Clone le dépôt du projet :

    ```sh
    git clone https://github.com/Frize01/microservices-orchestration.git
    ```

2. Exécute le script d'installation :

    ```sh
    sh install.sh
    ```

    Ce script configure les environnements et démarre les conteneurs nécessaires au bon fonctionnement du projet.

## Tests

### Utilisation avec Postman

Un fichier de collection [Postman JSON](<TP Docker.postman_collection.json>) est fourni pour effectuer des tests via Postman. Ce fichier contient des requêtes préconfigurées pour tester les services du projet.

### Variable globale

Lors de l'exécution des requêtes de test, une variable globale sera automatiquement créée dans Postman pour stocker l'authentification. Tu n'auras donc pas besoin de la configurer manuellement.

### Requête `/data` - Prérequis

L'API-app nécessite qu'au moins un utilisateur soit créé pour obtenir des données via la requête `/data`. Si aucun utilisateur n'est présent, la requête retournera un tableau vide au lieu d'échouer. Assure-toi de créer un utilisateur avant d'effectuer cette requête pour obtenir des données pertinentes.
