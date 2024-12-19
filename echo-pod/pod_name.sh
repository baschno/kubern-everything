#!/bin/sh

# Get hostname
POD_NAME=$(hostname)
POD_NAME=${POD_NAME:-"Unknown Pod Name"} 

# Get node name
NODE_NAME=${NODE_NAME:-"Unknown Node Name"}

# Replace the placeholders in the HTML with the actual pod name and node name
sed -i "s/{{POD_NAME}}/${POD_NAME}/g" /usr/share/nginx/html/index.html
sed -i "s/{{NODE_NAME}}/${NODE_NAME}/g" /usr/share/nginx/html/index.html

# Start Nginx
nginx -g 'daemon off;'
