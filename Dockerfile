# Use an official Python 3.12 image from Docker Hub
FROM python:3.12-slim

# Set the working directory
WORKDIR /app

# Copy your application code
COPY . /app

# Install the dependencies
RUN pip install -r requirements.txt

# Expose the port FastAPI will run on
EXPOSE 5050

# Command to run the FastAPI app
CMD ["python3", "app.py", "--host", "0.0.0.0", "--port", "5050"]
# CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8080"]