pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                  sh 'hostname'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}