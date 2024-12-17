#!/bin/bash

timeout=10

echo "Setting up Splunk in the background, this shell will be unusable until everything has been fully set up"

while true; do
    splunk_container_id=$(docker ps -a -q -f name="splunk")
    splunk_state=$(docker exec splunk /bin/bash -c "cat /opt/container_artifact/splunk-container.state")

    if [[ -n $splunk_container_id ]] && [[ $splunk_state == "started" ]]; then
        echo "Splunk is ready!"
        break
    else
        echo "Waiting for Splunk ..."
        sleep $timeout
    fi
done