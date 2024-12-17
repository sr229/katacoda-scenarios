#!/bin/bash

timeout=10

echo "Setting up Splunk in the background, this shell will be unusable until everything has been fully set up"

# Wait for background script to invocate the docker command
sleep 10

while true; do
    splunk_state=$(docker exec splunk /bin/bash -c "cat /opt/container_artifact/splunk-container.state")

    if [[ $splunk_state -eq "started" ]]; then
        echo "Splunk is ready!"
        break
    else
        echo "Waiting for Splunk ..."
        sleep $timeout
    fi
done