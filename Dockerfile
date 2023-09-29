# Utiliser une image Node.js
FROM node:14

# Créer un répertoire pour l'application
WORKDIR /src/app

# Copier le package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste du code source de l'application
COPY . .

# Exposer le port sur lequel votre application s'exécute
EXPOSE 4000

# Lancer votre application
CMD [ "node", "server.js" ]
