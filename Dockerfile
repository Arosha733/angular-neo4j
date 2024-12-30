# Use official Node.js image from Docker Hub
FROM node:16

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Install Bower dependencies (if you're using Bower)
RUN npm install -g bower && bower install

# Install Grunt (if you're using Grunt)
RUN npm install -g grunt-cli

# Install Protractor (for E2E tests)
RUN npm install -g protractor

# Set environment variables (optional, adjust to your needs)
ENV NODE_ENV=production

# Expose the port the app will run on (adjust as needed)
EXPOSE 8080

# Command to run the application (if needed, e.g., for a dev server)
CMD ["npm", "start"]

# If you want to run tests in the Docker container, you can add an entry for that:
# CMD ["npm", "test"]
