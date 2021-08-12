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

output "Instaling Terraform"
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install terraform

output "Initialing Terraform config"
cd ./Terraform
terraform init
terraform apply --auto-approve

if [[ "$(aws --version 2> /dev/null)" == "" ]]; then 
    error "AWS CLI is not installed"
fi

aws eks update-kubeconfig --name project_cluster


