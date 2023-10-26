# Use an official Python runtime as a parent image
FROM python:3.8

# Set the working directory in the Docker image
WORKDIR /app

RUN pip install psutil

# Clone the GitHub repository
RUN git clone https://github.com/nanuchavan037/git_jenkins.git .

# Expose a port
EXPOSE 8080

# Define the command to run your application
CMD ["python", "app.py"]

