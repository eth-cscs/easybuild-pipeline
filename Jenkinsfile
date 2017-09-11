pipeline{
    agent { label 'daint' }
    
    stages{
        stage("Pipeline on daint"){
            agent { label 'daint' }
            environment{
                MACH_RUNNER = "daint"
                
                USER = "jenscscs"
            }
            steps{
                script{
                    def scmVars = checkout scm
                    def commitHash = scmVars.GIT_COMMIT   
                    def pullRequestMessage = env.ghprbPullTitle
                    println(pullRequestMessage)
                    def shortCommitHash = commitHash[0..6]

                    println commitHash
                    println shortCommitHash
                    def homedir = env.HOME
                    def username = env.USER
                    println "Host name: " + env.HOSTNAME
                    println "Home directory: " + homedir
                    println "User name: : " + username
                    sh "hostname"
                    env.SHORT_COMMIT_HASH = shortCommitHash
                    env.COMMIT_HASH = commitHash
                } 
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
            agent { label 'dom' }
            environment{
                MACH_RUNNER = "dom"
            }
            steps{
                // sh "ssh ${LOGNAME}@${MACH_RUNNER}"
                echo "Inside dom stage"
                script{
                    println env.HOSTNAME
                    println "Commit Hash: ${env.COMMIT_HASH}"
                    println "Short Hash: ${env.SHORT_COMMIT_HASH}"
                }
            }
        }
    }
    post { 
        always { 
            echo "Finish execution of pipeline"
        }
    }
}
