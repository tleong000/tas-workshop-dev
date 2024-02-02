# Overview
This quick demo dives right into what the platform does, and sets the stage for the following content on how its done.

We will be pushing a go app, as it most easily describes immediate cf push of code with no other requirements.  (If you want to do Java, you'll need to build with maven first)

Example App (go): https://github.com/cloudfoundry-samples/test-app
Example App

Git clone this app and immediately CF PUSH after logging on.  Describe the commands being issued and the process as it's happening (detect, stage, deployed)

Sample Demo Magic Script: [cfpush.sh](./cfpush.sh)

Following the Push, Log on to Apps Manager and show the app running, look at logs, look at metrics and poke around apps manager.  
* Show how an app can be stopped, started and scaled.  
* Scale an app to 10 instances.  
* Show the logs to see the instances come online.  
* Look at events to show all of the activity you just performed
* View the running APP url and refresh to show how the instance number changes
* Check out the marketplace to see data services available.
  
All of these topics will be covered in more detail later.