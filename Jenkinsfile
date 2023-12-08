pipeline {
    agent any
    tools {
        maven 'MAVEN' 
    }
    stages {
        stage('Checkout') {
            steps {
                git credentialsId: 'a9acd8db-94c9-4b44-8ca1-56b5a72ebc49', url: 'https://github.com/ashley0801/Tp6dev'
            }
        }
        stage('Build') {
            steps {
                bat 'mvn clean install'
            }
        }
        stage('Unit Test Execution') {
            steps {
                bat 'mvn test'
            }
        }
        stage('Build the docker image') {
            steps {
                bat "docker build -t tp6devops:1.0 ."
            }
        }
    }
}

