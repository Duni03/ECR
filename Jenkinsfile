pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                script{
                    echo 'Hello World'
                    git clone 'https://github.com/Duni03/ECR'
                    cd ECR
                    ls -a   
                }
            }
        }
    }
}
