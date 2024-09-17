FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.faylx.mongodb.net
ENV MONGODB_USERNAME nevendimac
ENV MONGODB_PASSWORD NHU0d2x6VPuKOPPE

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]