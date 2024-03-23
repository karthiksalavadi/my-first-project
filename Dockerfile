# Use a lightweight base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy your HTML file into the container
COPY index.html /app

# Expose port 80 to the outside world
EXPOSE 80

# Command to run the HTTP server and serve the HTML file
CMD ["python", "-m", "http.server", "80"]

