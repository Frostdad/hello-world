pipeline {
    agent any
  stages {
    stage('Preparation') { // for display purposes
      // Get some code from a GitHub repository
      git 'https://github.com/Frostdad/hello-world.git'
   }
   stage('Build') {
      // Run the maven build
         sh "'mvn' -Dmaven.test.failure.ignore clean package"
   }
  }
}
