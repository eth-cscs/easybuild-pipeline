pipeline{
    agent { label 'dom' }
    
    stages{
        stage("Pipeline on dom"){
            agent { label 'dom' }
            environment{
                MACH_RUNNER = "dom"                
            }
            steps{
                script{
                    def scmVars = checkout scm
                    def commitHash = scmVars.GIT_COMMIT   
                    env.GIT_COMMIT = commitHash[0..6]
                    def pullRequestMessage = env.ghprbPullTitle
                } 
 
                sh '''project_name=${JOB_NAME%/*}
                      echo $project_name
                      status=0
                      if [[ ${ghprbPullTitle,,} =~ "dom-" ]]; then
                          if [[ ${ghprbPullTitle,,} =~ "dom-mc" ]]; then
                              echo "Running dom-mc"
                          fi
                          if [[ ${ghprbPullTitle,,} =~ "dom-gpu" ]]; then
                              echo "Running dom-gpu"
                          fi
                      elif [[ ${ghprbPullTitle,,} =~ "dom" ]]; then
                          echo "Running in both dom-mc and dom-gpu"
                      fi
                '''
                
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

        stage("Pipeline on daint"){
            agent { label 'daint' }
            environment{
                MACH_RUNNER = "daint"                
            }
            steps{
                script{
                    def scmVars = checkout scm
                    def commitHash = scmVars.GIT_COMMIT   
                    env.GIT_COMMIT = commitHash[0..6]
                    def pullRequestMessage = env.ghprbPullTitle
                } 
 
                sh '''project_name=${JOB_NAME%/*}
                      echo $project_name
                      status=0
                      if [[ ${ghprbPullTitle,,} =~ "daint-" ]]; then
                          if [[ ${ghprbPullTitle,,} =~ "daint-mc" ]]; then
                              echo "Running daint-mc"
                          fi
                          if [[ ${ghprbPullTitle,,} =~ "daint-gpu" ]]; then
                              echo "Running daint-gpu"
                          fi
                      elif [[ ${ghprbPullTitle,,} =~ "daint" ]]; then
                          echo "Running in both daint-mc and daint-gpu"
                      fi
                '''
                
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
      
    }

    post { 
        always { 
            echo "Finish execution of pipeline"
        }
    }
}
