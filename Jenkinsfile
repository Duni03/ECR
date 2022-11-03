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
                    '''                   
                }
            }
        }
        stage('ecrpush'){
            steps{
                script{
                    echo 'ECR_push'
                    sh '''
                    aws configure set aws_access_key_id AKIAUFWJDGGGD7VAVGFV
                    aws configure set aws_secret_access_key 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
                    aws configure set region us-east-1
                    aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 287110803852.dkr.ecr.us-east-1.amazonaws.com
                    '''
                }
            }
        }
    }
}
