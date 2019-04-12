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
                        echo "M2_HOME = ${M2_HOME}
                        mvn clean install
                    '''
                    //sh 'mvn clean install'
                    //sh './build.sh "mvn" "clean" "install"'

            }

        }

        stage('deploy'){
            steps {
                sh './deploy.sh'
            }
        }

    }

}
