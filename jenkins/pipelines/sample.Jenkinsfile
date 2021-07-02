@Library('bootstrap') _

pipeline {
  agent docker-agent
  stages {
    stage("Prepare") {
      steps {
        echo "Prepareing..."
        sleep time: 5
      }
    }
    stage("Build") {
      steps {
        echo "Building..."
        sleep time: 7
      }
    }
    stage("Test") {
      steps {
        echo "Testing..."
        sleep time: 10
      }
    }
    stage("Deploy") {
      steps {
        echo "Deploying..."
        sleep time: 6
        archiveBuildLog()
      }
    }
  }
}
