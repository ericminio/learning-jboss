#!/bin/bash

rm /usr/localsrcljboss/*.output

/usr/local/src/oracle/wait.sh

/usr/local/src/jboss/wait.sh
/usr/local/src/jboss/add-driver.sh
/usr/local/src/jboss/add-datasource.sh
/usr/local/src/jboss/test-datasource.sh