FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY server.js .
COPY index.html .

EXPOSE 3003

CMD ["node", "server.js"]
