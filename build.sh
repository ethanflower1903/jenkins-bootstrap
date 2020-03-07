#!/bin/bash
set -euo pipefail
# Retrieve additional dependencies
pushd lib
curl --connect-timeout 10 --max-time 30 --continue-at - --location --silent --show-error --remote-name https://repo1.maven.org/maven2/io/github/devatherock/jul-jsonformatter/1.0.1/jul-jsonformatter-1.0.1.jar
curl --connect-timeout 10 --max-time 30 --continue-at - --location --silent --show-error --remote-name https://repo1.maven.org/maven2/com/googlecode/json-simple/json-simple/1.1.1/json-simple-1.1.1.jar
popd
docker pull jenkins/jenkins:lts-alpine
docker build -t bdg/jenkins:latest .
