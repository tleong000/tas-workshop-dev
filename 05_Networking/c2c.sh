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

# Backend is now online via it's public facing URL.  You can show connection from frontend to backend using that URL.
# Describe that this is passing through the front door (hairpinning)

# To enable internal communication, you need to set an internal route:

pe "cf map-route backend apps.internal --hostname backend"

# Try the connection to the internal route, you will get connection refused.  That's because you need policy to allow it.

pe "cf add-network-policy frontend backend --protocol tcp --port 7007-7009"
pe "cf add-network-policy frontend backend --protocol udp --port 9001-9003"

pe "cf restart backend"

# Policy is now created.  Try the Internal url again from the frontend app.