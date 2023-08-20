#!/bin/bash

# URL of our application's health endpoint
APP_URL="localhost:9000/healthz"

# Use curl to fetch the health check endpoint
response=$(curl --write-out '%{http_code}' --silent --output /dev/null $APP_URL)

# Check if the response code is 200 (HTTP OK)
if [ $response -eq 200 ]; then
    echo "Backend is running and responded with HTTP 200."
    exit 0
else
    echo "Backend failed to respond with HTTP 200. Responded with: $response"
    exit 1
fi
