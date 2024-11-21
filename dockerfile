# Step 1: Use the official Nginx image
FROM nginx:alpine

# Step 2: Remove the default Nginx website
RUN rm -rf /usr/share/nginx/html/*

# Step 3: Copy HTML and CSS files from your local machine to the container
COPY . /usr/share/nginx/html

# Step 4: Expose port 80
EXPOSE 80

# Step 5: Start Nginx
CMD ["nginx", "-g", "daemon off;"]
