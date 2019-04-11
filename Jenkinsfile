pipeline {
    agent any
    tools {
            maven 'Apache Maven 3.5.2'
        }
    stages {

        stage('checkout') {
            steps {
                git 'https://github.com/juliencauwet/vl-server.git'
            }
        }

        stage('build'){
            steps {
                sh 'mvn clean install'
                dir("vl-server"){
                    sh 'ls'
                    sh './build.sh "mvn" "clean" "install"'
                }
            }

        }

        stage('deploy'){
            steps {
                sh './deploy.sh'
            }
        }

    }
}
