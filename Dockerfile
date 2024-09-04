FROM node:14 AS build

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

FROM node:18-slim

WORKDIR /app
RUN npm install -g serve

COPY --from=build /app/build ./build

CMD ["serve", "-s", "build"]
EXPOSE 5000
