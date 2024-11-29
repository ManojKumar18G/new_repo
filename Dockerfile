FROM node:17.9.1-alpine
WORKDIR /app
COPY package.json /app
RUN npm install
RUN chmod -R +x node_modules/.bin/
COPY . .
EXPOSE 3000
CMD ["npm","start"]
