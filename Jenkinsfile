pipeline{
    agent any
    
    stages{
        stage("Initializing"){
            steps{
                echo "Connecting to daint"
                sh 'ssh "jenscscs@daint" "bash ci-runner.sh"'
            }
        }
    }
}
