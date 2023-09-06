FROM node:16-alpine

WORKDIR /app

ADD package.json package-lock.json /app/
RUN npm install

EXPOSE 3000

ADD . /app

CMD ["node", "index"]
