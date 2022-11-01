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
                    dockerImage = docker.build "test:latest"
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
                    aws configure set aws_access_key_id AKIAWZHTONJSVBMA5IM7
                    aws configure set aws_secret_access_key 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
                    aws configure set region us-east-1
                    aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 466514504293.dkr.ecr.us-east-1.amazonaws.com
                    docker tag test:latest 466514504293.dkr.ecr.us-east-1.amazonaws.com/test:latest
                    docker push 466514504293.dkr.ecr.us-east-1.amazonaws.com/test:latest
                    '''
                }
            }
        }
    }
}
