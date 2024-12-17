#!/bin/bash

# Use the splunk image from Docker Hub
# https://hub.docker.com/r/splunk/splunk
docker run \
    -d \
    -p 8000:8000 \
    -e "SPLUNK_START_ARGS=--accept-license" \
    -e "SPLUNK_PASSWORD=killercoda" \
    --name splunk \
    splunk/splunk:latest
