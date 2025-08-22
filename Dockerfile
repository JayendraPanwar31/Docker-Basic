# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any necessary dependencies (if any)
# For example: RUN pip install some-library
RUN pip install debugpy

# Expose the port that the debugger will use
EXPOSE 8080

# Run the Python script when the container starts
# Start the program with debugger support
CMD ["python3", "-m", "debugpy", "--listen", "0.0.0.0:8080", "--wait-for-client", "App.py"]
