# Set the base image to Node.js 14
FROM node:14
# Set the working directory to /app
WORKDIR /app
# Copy the package.json and package-lock.json to /app
COPY package*.json ./
# Install dependencies
RUN npm install
# Copy the rest of the application code to /app
COPY . .
# Expose port 3000 for the server
EXPOSE 3000
# Start the server with "npm start" command
CMD ["npm", "start"]