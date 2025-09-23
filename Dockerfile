# Use the official Node.js 20 image as the base image
FROM node:24-alpine

# Create a new directory in the container to hold the application code
RUN mkdir -p /workspace/app

# Set the working directory to the new directory
WORKDIR /workspace/app

# Copy the package.json and package-lock.json files to the container
COPY package.json ./
COPY . .

RUN npm install

EXPOSE 5500
CMD ["node","server.js"]