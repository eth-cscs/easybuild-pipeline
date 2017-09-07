pipeline{
    agent any
    
    stages{
        stage("Pipeline on dom"){
            environment{
                MACH_RUNNER = "dom"
            }
            steps{
                echo "Connecting to dom"
                sh 'ssh "jenscscs@$MACH_RUNNER" "echo $HOSTNAME"'
            }
        }
    }
    post { 
        always { 
            echo 'Finish execution of pipeline'
        }
    }
}
