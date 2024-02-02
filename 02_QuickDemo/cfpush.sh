#!/usr/bin/env bash

. demo-magic/demo-magic.sh
. .cfenv

clear

pe "git clone https://github.com/cloudfoundry-samples/test-app"
pe "cd test-app"
pe "ls -l"
pe "cf login -a https://${CFAPI} -u ${CFUSER} -p ${CFPASS}"
pe "cf target -o ${CFORG} -s ${CFSPACE}"
pe "cf push test-app"