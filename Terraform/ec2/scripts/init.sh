#! /bin/sh

sudo apt update
sudo apt install -y unzip
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz"| tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x kubectl
sudo mv ./kubectl /usr/local/bin/kubectl 
echo '#!/bin/bash
if type apt > /dev/null; then
    pkg_mgr=apt
    java="openjdk-8-jre"
elif type yum /dev/null; then
    pkg_mgr=yum
    java="java"
fi
echo "updating and installing dependencies"
sudo ${pkg_mgr} update
sudo ${pkg_mgr} install -y ${java} wget git > /dev/null
echo "configuring jenkins user"
sudo useradd -m -s /bin/bash jenkins
echo "downloading latest jenkins WAR"
sudo su - jenkins -c "curl -L https://updates.jenkins-ci.org/latest/jenkins.war --output jenkins.war"
echo "setting up jenkins service"
sudo tee /etc/systemd/system/jenkins.service << EOF > /dev/null
[Unit]
Description=Jenkins Server

[Service]
User=jenkins
WorkingDirectory=/home/jenkins
ExecStart=/usr/bin/java -jar /home/jenkins/jenkins.war

[Install]
WantedBy=multi-user.target
EOF
sudo systemctl daemon-reload
sudo systemctl enable jenkins
sudo systemctl restart jenkins
sudo su - jenkins << EOF
until [ -f .jenkins/secrets/initialAdminPassword ]; do
    sleep 1
    echo "waiting for initial admin password"
done
until [[ -n "\$(cat  .jenkins/secrets/initialAdminPassword)" ]]; do
    sleep 1
    echo "waiting for initial admin password"
done
echo "initial admin password: \$(cat .jenkins/secrets/initialAdminPassword)"
EOF' > jenkins.sh
chmod +x jenkins.sh
./jenkins.sh 