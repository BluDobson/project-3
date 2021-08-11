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

output "Updating to make sure latest security patches are installed"
sudo apt update -y

if [[ "$(aws --version 2> /dev/null)" == "" ]]; then 
    error "AWS CLI is not installed"



