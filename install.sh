#!/bin/bash

cp .env.example .env

echo "UID=$(id -u)" >> .env
echo "GID=$(id -g)" >> .env

# Aller dans le dossier apps
cd apps

git clone https://github.com/Enzo-Aveline/auth-app.git
git clone https://github.com/Enzo-Aveline/api-app.git

# Revenir au dossier racine
cd ../

# Rebuild et relancer les conteneurs
docker-compose up -d --build
