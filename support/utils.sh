#!/bin/bash

function current_dir {
    echo $( cd "$( dirname "$1" )" >/dev/null 2>&1 && pwd )    
}
function current_folder {
    basename $1
}

JBOSS_CLI=/opt/jboss/wildfly/bin/jboss-cli.sh
