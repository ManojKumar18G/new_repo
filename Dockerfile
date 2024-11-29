FROM node:17.9.1-alpine
WORKDIR /app
COPY package.json /app
RUN npm install
RUN chmod +x new_repo/node_modules/.bin/react-scripts
COPY . .
EXPOSE 3000
CMD ["npm","start"]
