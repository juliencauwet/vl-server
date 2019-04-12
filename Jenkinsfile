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
                    sh '''
                        echo "PATH = ${PATH}"
                        echo "M2_HOME = ${M2_HOME}"
                        mvn clean install -DskipTests
                    '''
                    //sh 'mvn clean install'
                    //sh './build.sh "mvn" "clean" "install"'

            }

        }
        stage('Tests') {
                    steps {
                        sh 'mvn test'
                    }
                    post {
                        always {
                            junit 'target/surefire-reports/**/*.xml'
                        }
                        failure {
                            error 'The tests failed'
                        }
                    }
                }

        stage('deploy'){
            steps {
                sh '''
                    docker rm server
                    docker-compose down
                    docker run --name server -p 8651:8650 jaycecordon/vlserver:0.0.1-SNAPSHOT
                    docker ps -a
                '''
            }
        }

    }

}
