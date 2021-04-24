pipeline{
agent any
  environment{
    PATH="/home/ec2-user/apache-maven-3.6.3/bin:$PATH"
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
