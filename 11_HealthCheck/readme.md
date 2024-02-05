# Overview
Application health checks are one of the most important aspects of application Operations in TAS.  It will be important for the appops folks to understand all of the different levels of healthchecks that apply to a happily running application.

As an operator, it will be important to understand how health checks impact application resliency within a foundation (local resiliency) and across foundations (global resiliency).  

Start the conversation from the bottom up, covering in order:

* **When App Startup fails**: Application Startup Health Checks
* **When an single AI Fails**: Application Readiness and Liveliness Healthchecks
* **When an entire app or foundation fails**: External Health Checks from a GLB

DEMO is needed here