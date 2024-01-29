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
* App Metrics
* Container Networking
* TCP Routing
* A marketplace service (MySQL preferred)
* AOA Integrated (optional)

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
  * TCP Routing
  * DEMO: Blue-Green Deployment
  * Container networking
    * DEMO: C2C networking with dogs and cats
* Services
  * Review of Services (Marketplace vs UPS)
  * How services are delivered
  * DEMO: Provision Marketplace service and show environment
  * DEMO: Provision UPS and show app environment

### Day 2 - Application Operations
* TAS Architecture Review
* CI/CD
  * CI/CD best practices with TAS
  * DEMO: ADO Example Template
* Basic Application Operations
  * Start / Stop / Restart / Restage
  * Restart vs. Restage
  * Advanced Operations and Plugins
* Orgs, Spaces, Quota and Entitlements
  * Tenancy and Org/Space Hierarchy
  * Roles
  * Quota Resources
  * CPU Entitlement
* Health Checks
  * Health Check Categories
  * Health Check Types
* Application Logging
  * TAS Logging Architecture
  * DEMO: On-Platform Log Monitoring
  * Integrations
* Application Metrics
  * DEMO: On-Platform App Metrics
  * Integrations
  * AOA Integration (Optional)
* Common Challenges and Discussion

# Slide Deck (Broadcom Only)
[Google Sheets LINK](https://docs.google.com/presentation/d/1p4WGFhp0dRnb1-GPNesBubDjfELID5Pz/edit?usp=sharing&ouid=101770750454829329029&rtpof=true&sd=true)

