#!/bin/bash

/opt/jboss/wildfly/bin/jboss-cli.sh \
    --file=/usr/local/src/jboss/add-driver.cli \
    > /usr/local/src/jboss/add-driver.output
