FROM node:16-alpine

RUN mkdir -p /usr/app/

WORKDIR /usr/app/

COPY package*.json ./

RUN npm install --force

COPY ./ ./

RUN npm build

EXPOSE 3008

CMD ["npm", "start"]