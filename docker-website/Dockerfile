FROM node:16.3.0-alpine3.12

WORKDIR /usr/src/website

COPY package*.json .

RUN npm install

EXPOSE 2021

COPY website/ ./

CMD ["node", "website.js"]