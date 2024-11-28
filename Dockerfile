FROM node:17.9.1-alpine
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm","start"]
