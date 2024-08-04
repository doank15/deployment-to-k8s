FROM node:18-alpine

WORKDIR /deployment_to_kubernetes

COPY server.js /deployment_to_kubernetes
COPY package.json /deployment_to_kubernetes
COPY data.json .

RUN npm install

CMD [ "node", "server" ]