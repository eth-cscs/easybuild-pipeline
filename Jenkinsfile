pipeline {
    agent any 

    stages{
        stage("Init_Variables"){
            def gitCommit =  env.CHANGE_TITLE
        }
    }
    stages {
        stage('Build') { 
            steps { 
                echo 'Now Building....' 
                //sh 'git rev-parse HEAD > result'
                //gitCommit = readFile('result').trim()
                
                println gitCommit
                //echo gitCommit
                //ssh jenscscs@${MACH_RUNNER} "bash ${CI_FOLDER}/ci-scripts/ci-runner.bash -f ${CI_FOLDER} -i '--relax-performance-check'"
            }
        }
    }
}
