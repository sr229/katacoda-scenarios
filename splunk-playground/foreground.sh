#!/bin/bash

splunk_url="http://localhost:8000"
timeout=10

echo "Setting up Splunk in the background, this shell will be unusable until everything has been fully set up"

while true; do
    splunk_response_code=$(curl -s -o /dev/null -w "%{http_code}" "$splunk_url")

    if [[ $splunk_response_code -eq 200 ]]; then
        echo "Splunk is ready!"
        break
    else
        echo "Waiting for Splunk ..."
        sleep $timeout
    fi
done