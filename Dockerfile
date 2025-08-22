# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any necessary dependencies (if any)
# For example: RUN pip install some-library

# Run the Python script when the container starts
CMD ["python", "App.py"]
