# Overview
This quick demo dives right into what the platform does, and sets the stage for the following content on how its done.

We will be pushing a go app, as it most easily describes immediate cf push of code with no other requirements.  (If you want to do Java, you'll need to build with maven first)

Example App (go): https://github.com/cloudfoundry-samples/test-app
Example App

Git clone this app and immediately CF PUSH after logging on.  Describe the commands being issued and the process as it's happening (detect, stage, deployd)

Sample Demo Magic Script:
```
#!/usr/bin/env bash

. demo-magic/demo-magic.sh

clear

pe "git clone https://github.com/cloudfoundry-samples/test-app"
pe "cd test-app"
pe "ls -l"
pe "cf login -a https://${CFAPI} --sso -o ${CFORG} -s ${CFSPACE}"
pe "cf push test-app"

```

Following the Push, Log on to Apps Manager and show the app running, look at logs, look at metrics and poke around apps manager.  These topics will be covered in more detail later.