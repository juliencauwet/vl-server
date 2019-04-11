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
                sh 'cd ..'
                sh 'ls'
                sh 'pwd'
                sh './build.sh "mvn" "clean" "install"'
            }
        }

        stage('deploy'){
            steps {
                sh './deploy.sh'
            }
        }

    }
}
