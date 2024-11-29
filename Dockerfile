FROM node:17.9.1-alpine
WORKDIR /app
COPY package.json /app
RUN npm install
RUN chmod a+x /usr/src/app/node_modules/.bin/react-scripts
COPY . .
EXPOSE 3000
CMD ["npm","start"]
