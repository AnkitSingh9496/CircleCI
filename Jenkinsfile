pipeline {
    agent any

    tools {
        nodejs 'NodeJS_20'
    }

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/AnkitSingh9496/CircleCI.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'npm test'
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed.'
        }
    }
}
