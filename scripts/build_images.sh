#!/bin/bash

error()
{
    echo "[ error]:" "$1" "EXITING" 1>&2
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

output "Building the petclinic backend"
cd ./Backend/spring-petclinic-rest-master/; npm install; npm run-script build; cd ..

output "Building spring-petclinic-angular"
docker build --no-cache -t arichards98/frontend:latest ./Frontend/spring-petclinic-angular-master

output "Building nginx images"
docker build -t arichards98/nginx:latest -f ./containers/nginx/ .

#if [[ "$(docker images -q arichards98/petclinic-fe:latest 2> /dev/null)" == 22]]; then
#    error "could not rebuild image"
#fi 

output "Pushing qa/petclinic-be to dockerhub"
