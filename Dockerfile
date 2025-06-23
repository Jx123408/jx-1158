FROM node:20

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install
RUN npm rebuild bcrypt

COPY . .

EXPOSE 5193

CMD ["npm", "start"]