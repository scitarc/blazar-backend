# Check out https://hub.docker.com/_/node to select a new base image
FROM node:16-slim
WORKDIR /usr/src/app

COPY package*.json ./

# RUN apt update && apt upgrade && apt install -y fontconfig build-essential chrpath git-core libssl-dev libfontconfig1-dev imagemagick

RUN npm install

RUN npm install -g ts-node nodemon

# RUN npm install -g phantomjs-prebuilt
# RUN npm install pm2 -g

COPY . /usr/src/app

EXPOSE 8080

#CMD [ "npm", "start"]
CMD [ "node", "src/index.ts"]