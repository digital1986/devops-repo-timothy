# Use official Python image
FROM python:3.9

# Set working directory inside the container
WORKDIR /app

# Copy all files into the container
COPY . .

# Install Gunicorn and other dependencies
RUN pip install --no-cache-dir gunicorn
RUN pip install --no-cache-dir -r requirements.txt

# Set environment variable for the port
ENV PORT=80

# Run the web app using Gunicorn
CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 main:app

