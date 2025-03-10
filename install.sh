cp .env.example .env
cd apps
git clone git@github.com:Enzo-Aveline/auth-app.git
git clone git@github.com:Enzo-Aveline/api-app.git
cd ../
docker-compose up -d --build