FROM node:alpine

WORKDIR /usr/src/app

COPY package.json ./

COPY package-lock.json ./

COPY ./ ./
# Install bash
RUN apk add --no-cache bash

RUN npm i --legacy-peer-deps


CMD ["npm", "run", "dev"]