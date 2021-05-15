#!/bin/sh
if [ $(docker ps -a -f name=jkubecluster | grep -w jkubecluster | wc -l) -eq 1 ]; then
  docker rm -f jkubecluster
fi
mvn clean package && docker build -t evandromoura/jkubecluster .
docker run -d -p 9080:9080 -p 9443:9443 --name jkubecluster evandromoura/jkubecluster
