pipeline{
  agent any
  stages{
    stage("build"){
      steps{
        echo "clone project"
        git clone https://github.com/CTB97/jenkinHelloWorld.git
        ls -a
      }
    }
    stage("test"){
      steps{
        echo "test step"
      }
    }
    stage("deploy"){
      steps{
        echo "deploy step"
      }
    }
  }
}
