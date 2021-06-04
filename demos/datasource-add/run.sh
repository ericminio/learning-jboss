#!/bin/bash

source ./support/utils.sh

function test_datasource_add {
    local DIR=`current_dir ${BASH_SOURCE[0]}`
    local NAME=`current_folder $DIR`
    local input=$DIR/$NAME.cli
    local output=$DIR/$NAME.output
    $JBOSS_CLI --file=$DIR/clean.cli > $DIR/clean.output
    $JBOSS_CLI --file=$input > $output
    local enabled=`grep '"enabled"' $output | cut -d'>' -f2 | cut -d',' -f1 | xargs`

    assertequals "$enabled" "true" 
}