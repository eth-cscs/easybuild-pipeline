pipeline {
    agent any 

    stages {
        stage('Build') { 
            steps { 
                echo 'Now Building....' 
                gitCommit = sh(returnStdout: true, script: 'git rev-parse HEAD').trim()
                sh 'git rev-parse HEAD'
                //echo gitCommit
                //ssh jenscscs@${MACH_RUNNER} "bash ${CI_FOLDER}/ci-scripts/ci-runner.bash -f ${CI_FOLDER} -i '--relax-performance-check'"
            }
        }
    }
}
