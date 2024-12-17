#!/bin/bash


### RUN PROMETHEUS
mkdir /etc/prometheus
touch prometheus.yml
docker run \
    -d \
    -p 9090:9090 \
    -v /etc/prometheus:/etc/prometheus \
    prom/prometheus

### RUN GRAFANA
mkdir /var/lib/grafana
docker run -d -p 3000:3000 --name=grafana \
  --user "$(id -u)" \
  --volume "/var/lib/grafana:/var/lib/grafana" \
  grafana/grafana-enterprise