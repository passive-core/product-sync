# Use a slim Python image
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy and install Python deps
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy your application code
COPY src/ ./src/

# Default command
CMD ["python", "src/main.py"]
