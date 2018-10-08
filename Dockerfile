FROM node:6-alpine

ADD package.json /app
ADD app_server.js /app

RUN cd /app; npm install

ENV NODE_ENV test
ENV PORT 8080
EXPOSE 8080

WORKDIR "/app"
CMD [ "npm", "start" ]