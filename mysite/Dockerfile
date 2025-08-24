# Use official Python image from Docker Hub
FROM python:3.9-slim

# Set environment variables
ENV PYTHONUNBUFFERED=1

# Create and set the working directory
WORKDIR /app

# Copy the requirements.txt into the container
# Change it to ./mysite/requirements.txt /app/ --to use github Actions
COPY requirements.txt /app/ 

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire project into the container
COPY . /app/

# Expose port 8000 for Django to run
EXPOSE 8000

# Run Django migrations and start Gunicorn
CMD ["gunicorn", "mysite.wsgi:application", "--bind", "0.0.0.0:8000"]
