node{
    project_name = env.JOB_NAME

    syslist = ["daint", "dom", "kesch", "leone", "monch"]

    println project_name
    status=0
    gitCommit =  env.CHANGE_TITLE
    echo 'Now Building....' 
                
    println gitCommit
    //echo gitCommit
    //ssh jenscscs@${MACH_RUNNER} "bash ${CI_FOLDER}/ci-scripts/ci-runner.bash -f ${CI_FOLDER} -i '--relax-performance-check'"
}
