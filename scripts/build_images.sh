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

output "Building the Petclinic FE"
cd ./spring-petclinic-angular/; npm install; npm run-script build; cd ..

output "Building spring-petclinic-angular"
docker build --no-cache -t arichards98/petclinic-fe ./spring-petclinic-angular

if [[ "$(docker images -q arichards98/petclinic-fe:latest 2> /dev/null)" == 22]]; then
    error "could not rebuild image"
fi 

output "Pushing qa/petclinic-be to dockerhub"
