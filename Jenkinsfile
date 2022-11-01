pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
                git clone https://github.com/Duni03/ECR
                cd ECR
                ls -a
            }
        }
    }
}
