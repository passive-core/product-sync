# Use an official Node.js runtime (change if you’re using Go, Python, etc)
FROM node:18-alpine

# Create app directory
WORKDIR /app

# Install production dependencies
COPY package*.json ./
RUN npm ci --only=production

# Bundle app source
COPY . .

# Run the app (change this to your start command)
CMD ["node", "index.js"]
