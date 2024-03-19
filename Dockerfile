# Use a minimal Nginx image as the base for serving static content
FROM nginx:alpine

# Copy built files from the previous stage to the nginx directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Command to start Nginx
CMD ["nginx", "-g", "daemon off;"]