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
        stage('Docker') {
            steps {
                script{
                    echo 'AWS'
                    sh 'aws --version'
                }
            }
        }
    }
}
