# Step 1: Use Nginx to serve the pre-built React app
FROM nginx:alpine

# Copy the build output to the Nginx HTML directory
COPY ./build /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
