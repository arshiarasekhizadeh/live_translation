# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Install system dependencies needed for PyAudio
# This is crucial for microphone access
RUN apt-get update && apt-get install -y portaudio19-dev

# Copy the requirements file and install dependencies
# This step is done first to leverage Docker's layer caching
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the source code into the container
COPY ./src .

# Command to run the application
CMD ["python", "main.py"]