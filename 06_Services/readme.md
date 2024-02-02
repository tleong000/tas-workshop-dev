# Overview
Review the fact that TAS is a platform for running webapps and microservices, 
reinforcing that aligning to 12-factors ensures the best chance for success.  Data persistence within an AI is not typically possible, and any data will be destroyed if the AI is restarted.  

Services provide an easy way to provision and connect to external data services for all of your persistance needs.  These are available as fully integrated and on-demand services through the CF marketplace.  

Highlight the 2 different service types in TAS: Marketplace and User-Provided
* Marketplace services can be provisioned on-demand through the CF CLI or AppsManager
* User-Provided services allow for you to easily wire apps to externally provisioned data services like an Oracle database

# DEMO

Script: [services.sh](./services.sh)

Demo will create a marketplace redis service.  You should bind it to your test-app and then show the environment using the /env path in your browser.  Point out how credentials are delivered to the app automatically for consumption.  

Next the script can create a user provided service.  Describe again why this is used.  Bind it to your app and again show the environment.
