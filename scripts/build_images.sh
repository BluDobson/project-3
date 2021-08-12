#!/bin/bash
# ------------------------------------------------------------------
# Script Name: build_images.sh
# Description: Building the images for both the spring-petclinic
#              frontend and backend
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

sudo chmod 666 /var/run/docker.sock

output "Building the Petclinic FE"
cd ./spring-petclinic-angular/; npm install; npm run-script build; cd ..

output "Building spring-petclinic-angular"
docker build --no-cache -t arichards98/frontend:latest ./spring-petclinic-angular

if [[ "$(docker images -q arichards98/frontend:latest 2> /dev/null)" == "" ]]; then
    error "could not rebuild image"
fi

output "Running maven clean install to rebuild the jar file"
cd ./spring-petclinic-rest/; mvn clean install; cd ..

output "Building spring-petclinic-rest"
docker build --no-cache -t arichards98/backend:latest ./spring-petclinic-rest

if [[ "$(docker images -q arichards98/backend:latest 2> /dev/null)" == "" ]]; then
    error "could not rebuild image"
fi

output "Building nginx image"
docker build --no-cache -t arichards98/nginx:latest ./NGINX

if [[ "$(docker images -q arichards98/nginx:latest 2> /dev/null)" == "" ]]; then
    error "could not rebuild image"
fi


