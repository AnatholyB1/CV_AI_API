# Use the official Node.js image with a slim base
FROM node:20.10.0-slim

# Set the working directory in the container
WORKDIR /app

# Install Git
RUN apt-get update && apt-get install -y git

# Copy package.json to the working directory
COPY package.json .

# Install app dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Run git pull to update the code
RUN git pull

# Expose the port that the app will run on
EXPOSE 3000

# Define the command to run your application
CMD ["npm", "start"]
