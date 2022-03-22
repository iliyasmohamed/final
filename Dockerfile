FROM node:16.14.2

ENV NODE_ENV=production
#USER root

RUN apt-get update && apt-get install -y lsb-release
#RUN apt-get update && apt-get install -y docker-ce-cli
WORKDIR /app

#COPY ["package.json", "package-lock.json*", "./"]
COPY package*.json ./
COPY tsconfig*.json ./

RUN npm install
RUN npm install express
RUN npm install multer
RUN npm install body-parser
RUN npm install cors
RUN npm install morgan
RUN npm install fs
RUN npm install path
RUN npm i -g typescript

#COPY .* /app
ADD .  /app/

#RUN tsc
RUN npm run build

EXPOSE 3000

CMD [ "node", "."]