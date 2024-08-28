FROM node:18.20.4-slim AS develeopment

WORKDIR /react-project

COPY package.json .

RUN npm install

COPY . .

EXPOSE 5173

CMD [ "npm", "run", "dev" ]