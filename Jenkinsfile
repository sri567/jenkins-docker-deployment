pipeline{
agent any
  environment{
    PATH="/opt/apache-maven-3.8.1/bin:$PATH"
  }
  stages{
    stage("mavn war file"){
      steps{
       sh ''' mvn package '''
      }
    }
    
    stage("archive"){
      steps{
      archiveArtifacts artifacts: 'target/*.jar'
      }
    }
  }
}
