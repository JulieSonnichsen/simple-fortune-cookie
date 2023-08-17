#!/bin/bash

# URL of our application
APP_URL=localhost:8080

# Use curl to fetch the application's main page
response=$(curl --write-out '%{http_code}' --silent --output /dev/null $APP_URL)

# Check if the response code is 200 (HTTP OK)
if [ $response -eq 200 ]; then
    echo "Application is running and responded with HTTP 200."
    exit 0
else
    echo "Application failed to respond with HTTP 200. Responded with: $response"
    exit 1
fi