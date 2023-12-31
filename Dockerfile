# Use an official Node.js runtime as a base image
FROM node:20.10.0-slim

# Set the working directory in the container
WORKDIR /app

# Copy package.json to the working directory
COPY package.json .

# Install app dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port that the app will run on
EXPOSE 3000

# Define the command to run your application
CMD ["npm", "start"]
