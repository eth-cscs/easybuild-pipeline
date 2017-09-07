#!/bin/bash -l

# --- SETUP ---
# project name (removing label appended by Jenkins at the end)
# project_name=${JOB_NAME%/*}

# hard-coded list of systems in project
syslist="daint dom kesch leone monch"
export COMMIT="git rev-parse --short HEAD"
echo ${COMMIT}
# exit status
status=0

echo 'Project Name: ' ${project_name}
echo 'Hostname: ' ${HOSTNAME}
