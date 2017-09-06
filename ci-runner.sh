#!/bin/bash -l

# --- SETUP ---
# project name (removing label appended by Jenkins at the end)
project_name=${JOB_NAME%/*}

# hard-coded list of systems in project
syslist="daint dom kesch leone monch"

# exit status
status=0

echo 'Project Name: ' ${project_name}
echo 'Hostname: ' ${HOST_NAME}
