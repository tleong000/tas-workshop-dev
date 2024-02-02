#!/bin/bash

. demo-magic/demo-magic.sh
. .cfenv

clear

pe "git clone https://github.com/cloudfoundry-attic/cf-networking-examples.git"
pe "cd cf-networking-examples/frontend"
pe "cf login -a https://${CFAPI}"
pe "cf target -o ${CFORG} -s ${CFSPACE}"
pei -n "cf set-target dhaka"
pei "cf marketplace"
echo
echo
pe "cf create-service p-redis shared-vm myredis"
echo
echo
pe "cf services"
echo
echo
pe "cf service myredis"
echo
echo

pe "cf cups"
echo
echo
echo
echo
pe "cf create-user-provided-service my-cups -p '{"host":"db.example.com","username":"dbuser","password":"dbpass","dbname":"mydb"}'