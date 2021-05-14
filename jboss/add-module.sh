#!/bin/bash

/opt/jboss/wildfly/bin/jboss-cli.sh --file=/usr/local/src/jboss/add-module.cli

ls -la /opt/jboss/wildfly/modules/com/oracle/db/main
cat /opt/jboss/wildfly/modules/com/oracle/db/main/module.xml