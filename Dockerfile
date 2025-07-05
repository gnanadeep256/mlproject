# Use official Python image (specify version to avoid surprises)
FROM python:3.11-slim

# Set working directory in container
WORKDIR /app

# Copy all files from host to container
COPY . /app

# Update apt and install AWS CLI (for Elastic Beanstalk or CodePipeline use)
RUN apt-get update -y && apt-get install -y awscli

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Set the command to run your Flask app
CMD ["python", "app.py"]
