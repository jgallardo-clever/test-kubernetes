# Dockerfile de la app express
FROM node:22.18-alpine
WORKDIR /app
COPY app-express/package*.json ./
RUN npm install
COPY app-express/ .
EXPOSE 3000
CMD ["npm", "start"]