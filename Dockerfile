# Use the official Python image as the base image
FROM python:3.9-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the container
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app code to the container
COPY . .

# Expose the port that the Flask app will listen on
EXPOSE 5000

# Start the Flask app when the container is run
CMD ["python", "app.py"]