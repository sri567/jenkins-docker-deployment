pipeline{
agent any
  environment{
    PATH="/opt/apache-maven-3.6.3/bin:/opt/apache-tomcat-8.5.65/bin:$PATH"
  }
  stages{
    stage("mavn war file"){
      steps{
       sh ''' mvn package '''
      }
    }
    
    stage("archive"){
      steps{
      archiveArtifacts artifacts: 'target/*.war'
      }
    }
    
    stage("tomcat -deploy"){
      steps{
     sh ''' sudo cp /var/lib/jenkins/workspace/Demo/target/demoart/*.war /home/ec2-user/apache-tomcat-8.5.65/webapps '''

      }
      }
    
  }
}
