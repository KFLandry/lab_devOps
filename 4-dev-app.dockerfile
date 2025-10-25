FROM node:trixie-slim

WORKDIR /app

COPY ./broken-app/package*.json ./

RUN npm install

COPY ./broken-app .

RUN adduser appuser

USER appuser

EXPOSE 3000

ENTRYPOINT ["npm", "run", "start"]
