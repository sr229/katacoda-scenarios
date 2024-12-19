#!/bin/bash

jenkins_url="http://localhost:8080/login"
timeout=10

while true; do
    jenkins_response_code=$(curl -s -o /dev/null -w "%{http_code}" "$jenkins_url")

    if [[ $jenkins_response_code -eq 200 ]]; then
        echo "Jenkins is ready!"
        echo "Your initial password is: $(cat /var/lib/jenkins/secrets/initialAdminPassword)"
        break
    else
        echo "Waiting for Jenkins ..."
        sleep $timeout
    fi
done