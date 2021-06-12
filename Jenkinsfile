pipeline {
    agent { docker { image 'python:3.5.1' } }
    stages {
        stage('build') {
            steps {
                sh 'python --version'
                sh 'docker build -t just_for_test .'
            }
        }
        stage('test') {
            steps {
                sh 'pip3 install pytest'
                sh 'pytest'
            }
        }
        stage('package') {
            steps {
                sh 'pytest'
            }
        }
    }
}
