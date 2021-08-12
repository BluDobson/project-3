#!/bin/bash
# ------------------------------------------------------------------
# Script Name: images_push.sh
# Description: Pushing images for both the spring-petclinic
#              frontend and backend to docker hub
# Author     : QA
# ------------------------------------------------------------------

error()
{
    echo "[ERROR]:" "$1" "EXITING"1>&2
    exit 1
}

warning()
{
    echo "[WARNING]:" "$1" 1>&2
}

output()
{
    echo "[OUTPUT]:" "$1" 1>&2
}

output "arichards98/frontend:latest to dockerhub"

if [[ ! "$(docker images -q arichards98/frontend:latest 2> /dev/null)" == "" ]]; then
    output "Image exists"
    docker push arichards98/frontend:latest
fi

output "Pushing arichards98/backend:latest to dockerhub"

if [[ ! "$(docker images -q arichards98/backend:latest 2> /dev/null)" == "" ]]; then
    output "Image exists"
    docker push arichards98/backend:latest
fi

output "Pushing arichards98/nginx:latest to dockerhub"

if [[ ! "$(docker images -q arichards98/nginx:latest 2> /dev/null)" == "" ]]; then
    output "Image exists"
    docker push arichards98/nginx:latest
fi

