pipeline{
    agent any
    
    stages{
        stage("Pipeline on daint"){
            environment{
                MACH_RUNNER = "daint"
            }
            steps{
                script{
                    def scmVars = checkout scm
                    def commitHash = scmVars.GIT_COMMIT   
                    def shortCommitHash = commitHash[0..6]
                    println commitHash
                    println shortCommitHash
                    sh "mkdir ${shortCommitHash}"
                    sh "ls"
                    sh "rmdir ${shortCommitHash}"
                    sh "env"
                }
                
                //sh "git rev-parse --short HEAD"
                // sh "ssh -tt jencscs@${MACH_RUNNER}"    
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
                // sh "ssh ${LOGNAME}@${MACH_RUNNER}"
                echo "Inside dom stage"
            }
        }
    }
    post { 
        always { 
            echo "Finish execution of pipeline"
        }
    }
}
