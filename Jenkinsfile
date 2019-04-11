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

                withMaven(
                        // Maven installation declared in the Jenkins "Global Tool Configuration"
                        maven: 'M3',
                        // Maven settings.xml file defined with the Jenkins Config File Provider Plugin
                        // Maven settings and global settings can also be defined in Jenkins Global Tools Configuration
                        mavenSettingsConfig: 'my-maven-settings',
                        mavenLocalRepo: '.repository') {

                      // Run the maven build
                      sh "mvn clean install"

                    } // withMaven will
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
