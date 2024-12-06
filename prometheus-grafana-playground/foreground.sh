#!/bin/bash

prometheus_url="http://localhost:9090"  # Replace with your Prometheus URL
timeout=10  # Timeout in seconds

echo "Setting up Prometheus in the background, this shell will be unusable until everything has been fully set up"

while true; do
    response_code=$(curl -s -o /dev/null -w "%{http_code}" "$prometheus_url/status")

    if [[ $response_code -eq 200 ]]; then
        echo "Prometheus is ready!"
        break
    else
        echo "Waiting for Prometheus ..."
        sleep $timeout
    fi
done