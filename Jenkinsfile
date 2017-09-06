pipeline {
    agent any 

    stages {
        stage('Build') { 
            def gitCommit =  env.CHANGE_TITLE
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
