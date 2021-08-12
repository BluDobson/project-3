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

output "Building the petclinic frontend"
cd ./Frontend/spring-petclinic-angular-master/; npm install; npm run-script build; cd ..

output "Running maven clean install to rebuild the jar file"
cd ./Backend/spring-petclinic-rest-master/; mvn clean install; cd ..

output "Building images"
docker-compose up -d ./containers docker-compose.yaml

#if [[ "$(docker images -q arichards98/petclinic-fe:latest 2> /dev/null)" == 22]]; then
#    error "could not rebuild image"
#fi 

output "Pushing qa/petclinic-be to dockerhub"
