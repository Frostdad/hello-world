pipeline {
    agent any

    stages {
        stage('Prep') {
            steps {
                git 'https://github.com/Frostdad/hello-world.git'
            }
        }
        stage('Build') {
            steps {
                sh "'mvn' -Dmaven.test.failure.ignore clean package"
            }
        }
    
    }
}
