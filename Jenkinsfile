pipeline{
    agent any
    
    stages{
        stage("Initializing"){
            steps{
                echo "Connecting to dom"
                sh 'ssh "jenscscs@daint" "env"'
            }
        }
    }
}
