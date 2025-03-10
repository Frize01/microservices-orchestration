#!/bin/bash

# Copier le fichier .env s'il n'existe pas
if [ ! -f .env ]; then
    cp .env.example .env
fi

# Aller dans le dossier apps
cd apps

# Fonction pour cloner ou mettre à jour un dépôt
update_or_clone() {
    local repo_url=$1
    local folder_name=$2

    if [ -d "$folder_name" ]; then
        echo "Le dossier $folder_name existe déjà, mise à jour..."
        cd "$folder_name"
        git pull origin main
        cd ..
    else
        echo "Clonage de $repo_url..."
        git clone "$repo_url"
    fi
}

# Gestion des repositories
update_or_clone "https://github.com/Enzo-Aveline/auth-app.git" "auth-app"
update_or_clone "https://github.com/Enzo-Aveline/api-app.git" "api-app"

# Revenir au dossier racine
cd ../

# Arrêter et supprimer les volumes si Docker Compose est déjà en cours d'exécution
docker-compose down -v

# Rebuild et relancer les conteneurs
docker-compose up -d --build
