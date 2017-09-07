pipeline{
    agent any
    
    stages{
        stage("Pipeline on daint"){
            environment{
                MACH_RUNNER = "daint"
                GIT_COMMIT = credentials("GIT_COMMIT")
            }
            steps{
                sh "whoami"
                sh "echo ${GIT_COMMIT}"
                sh "env"
                
                sh "ssh ${LOGNAME}@${MACH_RUNNER}"    
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
