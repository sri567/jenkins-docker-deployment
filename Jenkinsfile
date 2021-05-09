pipeline{
agent any
  environment{
    PATH="/opt/apache-maven-3.6.3/bin:$PATH"
  }
  stages{
    stage("mavn war file"){
      steps{
       sh ''' mvn package '''
      }
    }
    
    
  }
}
