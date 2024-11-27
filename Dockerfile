FROM node:18.20.2-alpine
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm","start"]