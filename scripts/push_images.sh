
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

output "Pushing qa/petclinic-fe to dockerhub"

if [[ ! "$(docker images -q qa/petclinic-fe:latest 2> /dev/null)" == "" ]]; then
    output "Image exists"
    docker push qa/petclinic-fe
fi 

output "Pushing qa/petclinic-be to dockerhub"
