pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                script{
                    echo 'Hello World'
                    git branch: 'main', url: 'https://github.com/Duni03/ECR'
                    sh ''' 
                    ls -a
                    '''
                }
            }
        }
    }
}
