pipeline {
    agent any
    
    environment {
        DOCKER_CREDENTIALS_ID = '776ff342-a565-4670-9c79-8b8d29b20f18' // ID das credenciais do Docker no Jenkins
        GIT_REPO = 'https://github.com/brunohenri-g/teste-jenkins.git' // URL do seu repositório Git
        IMAGE_NAME = 'brunohenrigarcia/minha-imagem' // Nome da imagem Docker
        TAG = 'latest' // Tag da imagem
    }
    
    stages {
        stage('Checkout') {
            steps {
                git url: env.GIT_REPO
            }
        }
        
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("${env.IMAGE_NAME}:${env.TAG}")
                }
            }
        }
        
        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry('', env.DOCKER_CREDENTIALS_ID) {
                        docker.image("${env.IMAGE_NAME}:${env.TAG}").push()
                    }
                }
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