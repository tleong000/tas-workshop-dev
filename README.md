# TAS Developer Workshop
A TAS workshop aimed at educating new developers onboarding onto the platform.

# Workshop Overview
For new development teams that are looking to onboard onto TAS, this workshop will introduce them to TAS and provide a good understanding of the following topics:
* Cloud Native platforms, how TAS fits and what problems it solves
* Deploying applications on TAS and connect them with Data Services
* Once applications are deployed, how to operate and maintain them on the platform
* Basic Understanding of Platform Architecture
* Some Application Architecture best practices on TAS

# Requirements
You will need to demo several aspects of the TAS platform.  So, you'll need a functioning TAS installation with the following features enabled:
* Apps Manager
* Autoscaler

# Agenda
The workshop was designed to be delivered in two 4-hour sessions.  The first day aimed and deploying applications, and the second day on operations during runtime.  There are anchor slides with basic diagrams, but they must be delivered alongside platform demonstrations, whiteboarding and open dialog.  The slides to not stand on their own.

**NOTE**: This is not yet structured as a hands-on workshop.  There are no user exercises at this time.  This will be developed.

### Day 1 - App Deployment
* Cloud Native Platforms
  * Traditional vs. IAAS vs. PAAS
  * TAS Benefits
  * 12-Factor
* Quick Demo of TAS
  * DEMO: `cf push` with description of process
  * Apps Manager Walkthrough
* Buildpacks
  * How Apps are staged
  * Buildpack Review
    * What / Why of buildpacks
    * LCM of Buildpacks
    * DEMO: Available Buildpacks
    * Walkthrough of Java Buildpack GITHUB
    * Configuration Options
* Deploying with Application Manifests
  * Basic Manifest example
  * Adding Environment variables
  * Advanced Example walkthrough
* Application Networks and Routing
  * Architecture overview and Network flow
  * Routes and Domains
  * DEMO: Blue-Green Deployment
  * Container networking
    * DEMO: C2C networking with dogs and cats
* Services
  * Review of Services (Marketplace vs UPS)
  * How services are delivered
  * DEMO: Provision Marketplace service and show environment
  * DEMO: Provision UPS and show app environment

### Day 2 - Application Operations



# Instructions for Workshop Lead
