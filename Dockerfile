# Use a lightweight web server image
FROM nginx:alpine
# Copy application files to the server directory
COPY . /usr/share/nginx/html
# Expose port 80 for the application
EXPOSE 80
