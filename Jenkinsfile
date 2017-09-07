pipeline{
    agent any
    
    stages{
        stage("Pipeline on daint"){
            environment{
                MACH_RUNNER = "daint"
            }
            steps{
                sh "whoami"
                sh "env"
                sh "export COMMIT=`git rev-parse --short HEAD`"
                sh "ssh -tt jencscs@${MACH_RUNNER}"    
            }
              
            post{
                always{
                    echo "Finished pipeline on ${MACH_RUNNER}"
                }
                success{
                    echo "Pipeline successfull on ${MACH_RUNNER}"
                }
                failure{
                    echo "Pipeline failed on ${MACH_RUNNER}"
                }        
            }
        }
        
        stage("Pipeline on dom"){
            environment{
                MACH_RUNNER = "dom"
            }
            steps{
                sh "ssh ${LOGNAME}@${MACH_RUNNER}"
            }
        }
    }
    post { 
        always { 
            echo "Finish execution of pipeline"
        }
    }
}
