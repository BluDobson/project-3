
pipeline {
    agent any
    options {
        skipStagesAfterUnstable()
    }
    stages {        
        stage('Build') {
            steps {
                sh "./scripts/build.sh"                    
            }
        }
        stage('Kubernetes Cluster') {
            steps {
                sh "./scripts/cluster.sh"              
            }        
        }
        stage('Test') {
            steps {
                sh "./scripts/test.sh"                                      
            }
        }
        stage('Deploy') {
            steps {
                sh "./scripts/deploy.sh"                         
            }
        }
    }    
}
