FROM node:14.4.0-alpine3.12
WORKDIR /app
COPY package.json /app

RUN npm install
RUN npm install nodemon -g
EXPOSE 9000
COPY . /app

CMD ["npm", "start"]