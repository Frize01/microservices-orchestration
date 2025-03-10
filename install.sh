#!/bin/bash

# Copier le fichier .env s'il n'existe pas
if [ ! -f .env ]; then
    cp .env.example .env
fi

echo "UID=$(id -u)" > .env
echo "GID=$(id -g)" >> .env

# Aller dans le dossier apps
cd apps

# Fonction pour cloner ou mettre à jour un dépôt
clone() {
    local repo_url=$1
    local folder_name=$2
    echo "Le dossier $folder_name existe déjà, mise à jour..."
    cd "$folder_name"
    git pull origin main
    cd ..

}

# Gestion des repositories
clone "https://github.com/Enzo-Aveline/auth-app.git" "auth-app"
clone "https://github.com/Enzo-Aveline/api-app.git" "api-app"

# Revenir au dossier racine
cd ../

# Rebuild et relancer les conteneurs
docker-compose up -d --build
