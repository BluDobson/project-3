

pipeline {
    agent any
    options {
        skipStagesAfterUnstable()
    }
    stages {
        stage('Make scripts excecutable') {
            steps {
                sh "chmod +x ./scripts/*.sh"
            }        
        }
        stage('Before installation') {
            steps {
                sh "./scripts/before_installation.sh"                    
            }
        }
        stage('Build images') {
            steps {
                sh "./scripts/build_images.sh"                    
            }
        }
        stage('Push images to dockerhub') {
            steps {
                sh "./scripts/push_images.sh"                    
            }
        }
        stage('Deploy Kubernetes') {
            steps {
                sh "./scripts/deploy_kubernetes.sh"                    
            }
        }
        stage('After installation') {
            steps {
                sh "./scripts/after_installation.sh"                    
            }
        }
        
    }    
}

