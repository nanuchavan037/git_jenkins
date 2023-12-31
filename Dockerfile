# Use an official Python runtime as a parent image
FROM python:3.8

# Set the working directory in the Docker image
WORKDIR /app

# cloning git repository
RUN pip install psutil && \
    git clone --depth 1 https://github.com/nanuchavan037/git_jenkins.git .

# Expose a port
EXPOSE 8080

# Define the command to run your application
CMD ["python", "app.py"]

