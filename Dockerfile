FROM node:14-slim

WORKDIR /app

COPY . .

CMD ["npm", "start"]
EXPOSE 3000
