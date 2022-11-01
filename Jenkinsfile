pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                script{
                    echo 'Hello'
                    git branch: 'main', url: 'https://github.com/Duni03/ECR'
                    sh ''' 
                    ls -a
                    '''
                }
            }
        }
        stage('Docker') {
            steps {
                script{
                    echo 'Docker'
                    sh 'docker --version'
                }
            }
        }
        stage('aws') {
            steps {
                script{
                    echo 'AWS'
                    sh '''
                    aws --version
                    aws configure set aws_access_key_id AKIAWZHTONJSVBMA5IM7
                    aws configure set aws_access_secret_key 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
                    aws configure set region us-east-1
                    sudo su 
                    docker build -t test .
                    '''
                }
            }
        }
    }
}
