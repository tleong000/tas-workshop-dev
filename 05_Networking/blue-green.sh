#!/usr/bin/env bash

. .cfenv
. demo-magic/demo-magic.sh

clear

pe "git clone https://github.com/cloudfoundry-samples/test-app"
pe "cd test-app"
pe "cf login -a https://${CFAPI}"
pe "cf target -o ${CFORG} -s ${CFSPACE}"
pe "cf push test-app-v1"

# View App in browser
# Looks good!  mapp prod url to app v1
pe "cf map-route test-app-v1 ${CFAPPDOMAIN} --hostname test-app"
# View App in browser using prod URL
# Edit Code (change line 26 text)
pe "cf push test-app-v2"
# View App v2 in browser
# Looks good!  map prod url to app v2
pe "cf map-route test-app-v2 ${CFAPPDOMAIN} --hostname test-app"
# View prod app url in browswer, refresh to show both versions.
# Lets remove v1:
pe "cf unmap-route test-app-v1 ${CFAPPDOMAIN} --hostname test-app"
# view prod app url in browser, now only v2 is there.
# OH NO... client decides they don't like that change... gotta roll back.

# ROLLBACK
# Re-map V1 to prod URL
pe "cf map-route test-app-v1 ${CFAPPDOMAIN} --hostname test-app"
# Un-mapp v2 from prod URL
pe "cf unmap-route test-app-v2 ${CFAPPDOMAIN} --hostname test-app"
# View App in browser.