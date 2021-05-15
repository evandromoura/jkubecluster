#!/bin/sh
mvn clean package && sudo docker build -t evandromoura/jkubecluster . && sudo docker push evandromoura/jkubecluster
