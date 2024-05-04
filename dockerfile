FROM node:latest

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 4120

CMD ["npm", "start"]