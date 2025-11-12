# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install app dependencies
RUN npm install

# Bundle app's source code
COPY . .

# Expose port 3000
EXPOSE 3000

# Define environment variable (optional)
ENV NAME="JenkinsDemo"

# Run the app
CMD [ "npm", "start" ]
