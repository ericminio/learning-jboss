#!/bin/bash

source ./support/utils.sh

function test_status {
    local DIR=`current_dir ${BASH_SOURCE[0]}`
    local NAME=`current_folder $DIR`
    local input=$DIR/$NAME.cli
    local output=$DIR/$NAME.output
    $JBOSS_CLI --file=$input > $output
    local actual=`grep running $output | wc -l | xargs`

    assertequals $actual 1
}