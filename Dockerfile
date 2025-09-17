
# Use the official Nginx image as a base
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Copy the HTML file
COPY index.html .

# Create directories for images and other assets
RUN mkdir -p images

# Create placeholder images (in a real scenario, you would copy actual image files)
# Replace the RUN command that creates placeholder images with:
COPY images/ images/

# Expose port 80
EXPOSE 80

# Start Nginx server (this is the default command in the nginx image)
CMD ["nginx", "-g", "daemon off;"]