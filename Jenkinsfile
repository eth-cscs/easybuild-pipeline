pipeline{
    agent any
    
    stages{
        stage("Pipeline on dom"){
            environment{
                MACH_RUNNER = "dom"
            }
            steps{
                echo "Connecting to $MACH_RUNNER"
                sh 'ssh jenscscs@$MACH_RUNNER "pwd"'
            }
        }
        post{
            success{
                echo "Pipeline successfull on $MACH_RUNNER"
            }
            failure{
                echo "Pipeline failed on $MACH_RUNNER"
            }
            always{
                echo "Finished pipeline on $MACH_RUNNEr"
            }
        }
        
        stage("Pipeline on daint"){
            environment{
                MACH_RUNNER = "daint"
            }
            steps{
                echo "Connecting to $MACH_RUNNER"
                sh 'ssh jenscscs@$MACH_RUNNER "pwd"'
            }
        }
    }
    post { 
        always { 
            echo 'Finish execution of pipeline'
        }
    }
}
