FROM node:alpine

WORKDIR /usr/src/app

COPY package.json ./

COPY package-lock.json ./

COPY ./ ./

RUN npm i --legacy-peer-deps

Run npm install @fortawesome/fontawesome-svg-core

CMD ["npm", "run", "dev"]