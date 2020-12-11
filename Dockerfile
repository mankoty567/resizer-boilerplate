#On se base sur l'image node 14
FROM node:14
MAINTAINER Xavier Schuszter <mankoty567@gmail.com>

#Définition des variables d'environnement
ENV NODE_ENV=production

#Copies des sources applicatives
COPY ./ /app

#Toutes les commandes suivantes seront dans /app
WORKDIR /app

RUN npm install

EXPOSE 1337
CMD npm run start