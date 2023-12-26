# Use a minimal base image
FROM python:3.9-slim

# Set the working directory to /app
WORKDIR /app

# Copy only necessary files
COPY app.py .

# Install only required dependencies
RUN pip install --no-cache-dir Flask==2.0.1

# Expose port 5000 for the Flask application
EXPOSE 5000

# Run app.py when the container launches
CMD ["python", "app.py"]
