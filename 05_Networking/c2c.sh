!/usr/bin/env bash

. .cfenv
. demo-magic/demo-magic.sh

clear

pe "git clone https://github.com/cloudfoundry-attic/cf-networking-examples.git"
pe "cd cf-networking-examples/frontend"
pe "cf login -a https://${CFAPI}"
pe "cf target -o ${CFORG} -s ${CFSPACE}"

pe "cf push frontend"
# look at frontend in browser, explain that it can show a connection to a backend service over HTTP, TCP or UDP.
pe "cd ../backend"
pe "cf push backend"
