pipeline{
    agent any
    
    stages{
        stage("Pipeline on dom"){
            environment{
                MACH_RUNNER = "dom"
            }
            steps{
                echo "Connecting to $MACH_RUNNER"
                sh 'ssh "jenscscs@$MACH_RUNNER"'
            }
        }
        
        stage("Pipeline on daint"){
            environment{
                MACH_RUNNER = "daint"
            }
            steps{
                echo "Connecting to $MACH_RUNNER"
                sh 'ssh "jenscscs@$MACH_RUNNER"'
            }
        }
    }
    post { 
        always { 
            echo 'Finish execution of pipeline'
        }
    }
}
