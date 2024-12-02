FROM node:17.9.1-alpine
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . .
RUN chmod +x node_modules/.bin/react-scripts
RUN npm run build
EXPOSE 3000
CMD ["npm","start"]
