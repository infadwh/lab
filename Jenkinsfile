pipeline {
  agent any
  stages{
    stage("build") {
      steps {
          echo "hello world" 
      }
    }
    stage("Init") {
      steps {
          sh 'terraform init' 
      }
    }
  }
}
