# Use an Ubuntu/Apache2 image as the base
FROM ubuntu:latest

# Install Apache2 and other required dependencies
RUN apt-get update && apt-get install -y apache2

# Copy your custom webpage to the Apache web root
COPY index.html /var/www/html/

# Expose port 80
EXPOSE 80

# Start Apache2 in the foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]
