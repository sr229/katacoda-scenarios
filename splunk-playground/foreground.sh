#!/bin/bash

timeout=10

echo "Setting up Splunk in the background, this shell will be unusable until everything has been fully set up"

while true; do
    if [[ -n $(docker ps -a -q -f name="splunk") ]]; then 
        break
    else
        sleep $timeout
    fi
done

while true; do
    splunk_state=$(docker exec splunk /bin/bash -c "cat /opt/container_artifact/splunk-container.state")

    if [[ $splunk_state == "started" ]]; then
        echo "Splunk is ready!"
        break
    else
        echo "Waiting for Splunk ..."
        sleep $timeout
    fi
done