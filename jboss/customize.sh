#!/bin/bash

rm /usr/local/src/jboss/*.output

/usr/local/src/oracle/wait.sh

/usr/local/src/jboss/wait.sh
/usr/local/src/jboss/add-driver.sh