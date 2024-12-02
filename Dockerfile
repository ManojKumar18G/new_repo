FROM node:17.9.1-alpine
WORKDIR /app
COPY package.json /app
RUN npm install
RUN chmod +x node_modules/.bin/react-scripts
RUN npm run build
COPY . .
EXPOSE 3000
CMD ["npm","start"]
