#!/bin/bash

/usr/local/src/jboss/customize.sh &
/opt/jboss/wildfly/bin/standalone.sh -b 0.0.0.0 -bmanagement 0.0.0.0
