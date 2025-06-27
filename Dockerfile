# Use official Python base image
FROM python:3.13-slim

# Set working directory inside the container
WORKDIR /app

# Copy dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the application code
COPY app.py .

# Expose port Flask will use
EXPOSE 5000

# Start the Flask app
CMD ["python", "app.py"]
