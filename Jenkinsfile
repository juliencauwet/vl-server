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
                sh './build.sh "mvn" "-X" "clean" "install"'
            }
        }

        stage('deploy'){
            steps {
                sh './deploy.sh'
            }
        }

    }
}
