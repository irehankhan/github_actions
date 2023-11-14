# Base Image
FROM python:3.9-slim

# Set Working Directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies specified in requirements.txt
RUN pip install -r requirements.txt

# Expose port 5000 to outside this container
EXPOSE 5000

# Run app.py when the container launches
CMD ["python", "app.py"]
