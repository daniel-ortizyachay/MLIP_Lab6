pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                sh '''#!/bin/bash
                echo "Building Docker image with Conda..."
                docker build -t mlip-lab6-conda -f Dockerfile .
                '''
            }
        }
        stage('Run Tests') {
            steps {
                sh '''#!/bin/bash
                echo "Running tests inside Docker container with Conda..."
                docker run --rm mlip-lab6-conda bash -c "
                    source /opt/conda/bin/activate mlip && pytest
                "
                '''
            }
        }
        stage('Deploy') {
            steps {
                echo 'In this step, we deploy our project'
                echo 'Depending on the context, we may publish the project artifact or upload pickle files'
            }
        }
    }
}
