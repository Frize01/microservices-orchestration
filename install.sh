cp .env.example .env
cd apps
git clone https://github.com/Enzo-Aveline/auth-app.git
git clone https://github.com/Enzo-Aveline/api-app.git
cd ../
docker-compose up -d --build