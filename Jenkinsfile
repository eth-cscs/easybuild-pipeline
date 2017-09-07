pipeline{
    agent any
    
    stages{
        stage("Pipeline on daint"){
            environment{
                MACH_RUNNER = "daint"
            }
            steps{
                sh 'pwd'
                echo "Connecting to $MACH_RUNNER"
                sh 'ssh jenscscs@$MACH_RUNNER'      
                sh 'exit'
            }
              
            post{
                always{
                    echo "Finished pipeline on $MACH_RUNNER"
                }
                success{
                    echo "Pipeline successfull on $MACH_RUNNER"
                }
                failure{
                 echo "Pipeline failed on $MACH_RUNNER"
                }        
            }
        }
        
        stage("Pipeline on dom"){
            environment{
                MACH_RUNNER = "dom"
            }
            steps{
                sh 'pwd'
                echo "Connecting to $MACH_RUNNER"
                sh 'ssh jenscscs@$MACH_RUNNER'
                sh 'exit'
            }
        }
    }
    post { 
        always { 
            echo 'Finish execution of pipeline'
        }
    }
}
