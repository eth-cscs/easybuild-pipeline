pipeline {
    agent any 

    stages {
        stage('Build') { 
            steps { 
                echo 'Now Building....' 
                //sh 'git rev-parse HEAD > result'
                //gitCommit = readFile('result').trim()
                def gitCommit =  env.CHANGE_TITLE
                println gitCommit
                //echo gitCommit
                //ssh jenscscs@${MACH_RUNNER} "bash ${CI_FOLDER}/ci-scripts/ci-runner.bash -f ${CI_FOLDER} -i '--relax-performance-check'"
            }
        }
    }
}
