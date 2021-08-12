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

output "Building the Petclinic FE"
cd ./spring-petclinic-angular/; npm install; npm run-script build; cd ..

output "Building spring-petclinic-angular"
docker build --no-cache -t qa/petclinic-fe ./spring-petclinic-angular

if [[ "$(docker images -q qa/petclinic-fe:latest 2> /dev/null)" == "" ]]; then
    error "could not rebuild image"
fi

output "Running maven clean install to rebuild the jar file"
cd ./spring-petclinic-rest/; mvn clean install; cd ..

output "Building spring-petclinic-rest"
docker build --no-cache -t qa/petclinic-be ./spring-petclinic-rest

if [[ "$(docker images -q qa/petclinic-be:latest 2> /dev/null)" == "" ]]; then
    error "could not rebuild image"
fi

output "Building nginx image"
docker build --no-cache -t qa/nginx ./NGINX

if [[ "$(docker images -q qa/nginx:latest 2> /dev/null)" == "" ]]; then
    error "could not rebuild image"
fi


