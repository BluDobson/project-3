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

output "Deploying the backend objects"
kubectl apply -f ./k8/backend.yaml

output "Deploying the frontend objects"
kubectl apply -f ./k8/frontend.yaml

output "Delay NGINX start for 1 minute while waiting for frontend k8 to start running"
sleep 1m

output "Deploying the nginx object"
kubectl apply -f ./k8/nginx.yaml

output "Waiting 2 minutes for health check of load balancer to complete"
sleep 2m
