# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5070 available to the world outside this container
EXPOSE 5070

# Define environment variable
ENV FLASK_APP=app.py

# Run Flask app
CMD ["flask", "run", "--host=0.0.0.0", "--port=5070"]
