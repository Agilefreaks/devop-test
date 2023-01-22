// there are 4 stages in pipeline, 
// first is checking the source code from GitHub repo
// the other three are just displaying text

pipeline {
  agent any
  stages {
    stage('Checkout code') {
      steps {
        echo 'Checkout code'
        git(url: 'https://github.com/Aspirelus/Devop_test_MyVersion.git', branch: 'main')
      }
    }

    stage('Build') {
      steps {
        echo 'Build the app'
      }
    }

    stage('Test') {
      steps {
        echo 'Test the app'
      }
    }

    stage('Deploy') {
      steps {
        echo 'Deploy stage'
      }
    }

  }
}