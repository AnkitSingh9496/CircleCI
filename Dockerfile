# Use official Node.js image
FROM node:18-slim

# Create app directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy app source
COPY . .

# Expose app port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]



# RUN npm install --omit=dev