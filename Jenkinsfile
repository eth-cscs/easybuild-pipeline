node{
    sh '"project_name=${JOB_NAME%/*}"'
    sh '"echo ${project_name} > name_file"'
    project_name = readFile 'name_file'

    syslist = ["daint", "dom", "kesch", "leone", "monch"]

    println "The project name is: "  + project_name
    status=0
    gitCommit =  env.CHANGE_TITLE
    echo 'Now Building....' 
                
    println gitCommit
    //echo gitCommit
    //ssh jenscscs@${MACH_RUNNER} "bash ${CI_FOLDER}/ci-scripts/ci-runner.bash -f ${CI_FOLDER} -i '--relax-performance-check'"
}
