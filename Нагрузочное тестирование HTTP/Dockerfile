FROM node:lts-alpine

RUN mkdir -p /home/node/postman-to-k6/node_modules && chown -R node:node /home/node/postman-to-k6
WORKDIR /home/node/postman-to-k6
COPY package*.json ./
USER node
COPY --chown=node:node . .
RUN npm install -D @apideck/postman-to-k6

ENTRYPOINT ["node", "bin/postman-to-k6.js"]