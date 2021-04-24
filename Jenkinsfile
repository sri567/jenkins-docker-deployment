pipeline{
agent any
  environment{
    PATH="/opt/apache-maven-3.8.1/bin:$PATH"
  }
  stages{
    stage("mavn war file"){
      steps{
       sh ''' mvn archetype:generate -DarchetypeGroupId=org.apache.maven.archetypes -DarchetypeArtifactId=maven-archetype-webapp -DarchetypeVersion=1.4 '''
      }
    }
  }
}
