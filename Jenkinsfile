pipeline {
    agent {
        meu-docker { image 'node:20.16.0-alpine3.20' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'node --version'
            }
        }
    }
}
// pipeline {
//     agent any

//     stages {
//         stage('Build') {
//             steps {
//                   sh 'docker ps'
//             }
//         }
//         stage('Test') {
//             steps {
//                 echo 'Testing..'
//             }
//         }
//         stage('Deploy') {
//             steps {
//                 echo 'Deploying....'
//             }
//         }
//     }
// }