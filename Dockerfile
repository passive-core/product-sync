# 1. Use lightweight Node.js base image
FROM node:18-alpine

# 2. Create app directory
WORKDIR /app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY src/ ./src/
COPY src/ ./src/

# 3. Copy package manifests and install dependencies
COPY requirements.txt ./
RUN pip install -r requirements.txt
RUN npm ci --only=production

# 4. Copy your source code
COPY src/ ./src/

# 5. Expose the port your app listens on
EXPOSE 8080

# 6. Define the default start command
CMD ["python","src/main.py"]
