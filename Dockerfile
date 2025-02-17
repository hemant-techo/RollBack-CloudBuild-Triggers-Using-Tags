# Use the official Node.js 16 image
FROM node:16

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the application code
COPY . .

# Set the environment variable for version
ARG VERSION=1.0.0
ENV VERSION=${VERSION}

# Expose the port
EXPOSE 8080

# Start the application
CMD ["npm", "start"]
