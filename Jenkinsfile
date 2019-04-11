pipeline {
    agent any
    stages {

        stage('checkout') {
            steps {
                git 'https://github.com/juliencauwet/vl-server.git'
            }
        }

        stage('build'){
            steps {
                sh './build.sh'
            }
        }

        stage('deploy'){
            steps {
                sh './deploy.sh'
            }
        }

    }
}
