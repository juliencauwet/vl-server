pipeline {
    agent any
    tools{
        maven 'Maven 3.6.0'
    }
    stages {

        stage('Checkout') {
            steps {
                git 'https://github.com/juliencauwet/vl-server.git'
            }
        }

        stage('Build'){
            steps {
                    sh 'mvn clean install -DskipTests'
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

        stage('Deploy'){
            steps {
                sh '''
                    docker-compose down
                    docker run -d --name server -p 8651:8650 jaycecordon/vlserver:0.0.1-SNAPSHOT
                    docker ps -a
                '''
            }
        }

    }

}
