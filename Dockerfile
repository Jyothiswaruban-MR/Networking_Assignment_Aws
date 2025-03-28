# Use the official Nginx image from the Docker registry
FROM nginx:latest

# Copy the index.html file from the current directory to the Nginx server directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to allow external traffic to reach the Nginx container
EXPOSE 80
