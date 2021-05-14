#!/bin/bash

output=/usr/local/src/jboss/wait.output
ready=0
while [ "$ready" != "1" ]
do
    echo "waiting for JBoss";
    sleep 1;
    /opt/jboss/wildfly/bin/jboss-cli.sh -c ":read-attribute(name=server-state)" > $output
    ready=`grep success $output | wc -l | xargs`
done;
echo "JBoss is ready";

