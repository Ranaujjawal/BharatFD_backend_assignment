# Use official Node.js image as a base
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application
COPY . .

# Expose the port your app is running on
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
