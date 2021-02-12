FROM node:alpine

WORKDIR /usr/app

COPY ./package.json ./
RUN npm install -g npm@7.5.3
RUN npm install
COPY ./ ./

CMD ["npm", "start"]
