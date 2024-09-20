# Use an official Python runtime as a base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt .

# Install the required Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose the port the app runs on
EXPOSE 8080

# Set environment variables (if any, replace MOVIE_CATALOG_SERVICE with actual env vars)
ENV MOVIE_CATALOG_SERVICE=http://localhost:8080

# Run the application
CMD ["python", "app.py"]

