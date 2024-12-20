# Use the official Node.js image based on Alpine Linux
FROM node:alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json first to leverage Docker caching
COPY package.json package-lock.json /app/

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . /app/

# Expose the port where the server will be running (default for live-server is 3000)
EXPOSE 3000

# Run the live-server with npm start
CMD ["npm", "start"]
