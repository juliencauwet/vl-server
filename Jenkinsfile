pipeline {
    agent any
    tools{
        maven 'Maven 3.6.0'
    }
    stages {

        stage('checkout') {
            steps {
                git 'https://github.com/juliencauwet/vl-server.git'
            }
        }

        stage('build'){
            steps {
                    mvn clean installl
                    //sh './build.sh "mvn" "clean" "install"'
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
