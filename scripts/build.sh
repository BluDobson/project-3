#!/bin/bash

docker login
docker-compose up -d  
docker-compose containers/docker-compose.yaml build
docker-compose containers/docker-compose.yaml push
