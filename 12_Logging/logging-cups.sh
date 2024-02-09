!/usr/bin/env bash

. .cfenv
. demo-magic/demo-magic.sh

clear

pe "cf login -a https://${CFAPI}"
pe "cf target -o ${CFORG} -s ${CFSPACE}"

pe "cf cups mylogger -l 'syslog://mylogger.example.com:32123'"
pe "cf bs frontend mylogger"
pe "cf restage frontend"
