#!/bin/bash

prometheus_url="http://localhost:9090/-/healthy"
grafana_url="http://localhost:3000/api/health"
timeout=10

echo "Setting up Prometheus in the background, this shell will be unusable until everything has been fully set up"

while true; do
    prometheus_response_code=$(curl -s -o /dev/null -w "%{http_code}" "$prometheus_url/status")
    grafana_response_code=$(curl -s -o /dev/null -w "%{http_code}" "$grafana_url")

    if [[ $prometheus_response_code -eq 200 ]] && [[ $grafana_response_code -eq 200 ]]; then
        echo "Prometheus and Grafana are ready!"
        break
    else
        echo "Waiting for Prometheus and Grafana ..."
        sleep $timeout
    fi
done