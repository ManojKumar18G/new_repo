# Use Node.js 17.9.1 Alpine as the base image for a smaller size
FROM node:17.9.1-alpine AS build

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available) for npm install
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Run the build command to create a production build
RUN npm run build

# Use a smaller image to serve the build in production
FROM nginx:alpine

# Copy the optimized build files from the previous image
COPY --from=build /app/build /usr/share/nginx/html

# Expose the port the app will run on
EXPOSE 80

# Start the nginx server to serve the static files
CMD ["nginx", "-g", "daemon off;"]
