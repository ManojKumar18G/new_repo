FROM node:17.9.1-alpine
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . .
RUN chmod +x node_modules/.bin/react-scripts
RUN npm run build
RUN npm install -g serve
RUN npm install serve --save-dev
EXPOSE 3000
CMD ["npm","start"]
