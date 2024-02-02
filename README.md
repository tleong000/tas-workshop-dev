# TAS Developer Workshop - WORK IN PROGRESS
A TAS workshop aimed at educating new developers onboarding onto the platform.  **Content is still being created, so this is not complete yet.**

# Workshop Overview
For new development teams that are looking to onboard onto TAS, this workshop will introduce them to TAS and provide a good understanding of the following topics:
* Cloud Native platforms, how TAS fits and what problems it solves
* Deploying applications on TAS and connect them with Data Services
* Once applications are deployed, how to operate and maintain them on the platform
* Basic Understanding of Platform Architecture
* Some Application Architecture best practices on TAS

# Requirements
### TAS Requirements
You will need to demo several aspects of the TAS platform.  So, you'll need a functioning TAS installation with the following features enabled:
* Apps Manager
* Autoscaler
* App Metrics
* Container Networking
* TCP Routing
* A marketplace service (MySQL preferred)
* AOA Integrated (optional)
* TAS Developer Portal (optional)
  
Once you have an environment, you may want to configure the .cfenv file in this repo, as several of the demo scripts 

### Workstation Requirements
To run the demos on your local laptop, you will need the following installed:
* [CF CLI](https://github.com/cloudfoundry/cli)
* [Demo Magic](https://github.com/paxtonhare/demo-magic) (To auto-type demo commands)
* A Mac or Linux Shell is helpful

### Workshop Leader
To run this workshop, you should have at least a level 200 knowledge of TAS, with the ability to use most of its functions and be able to explain how it works at a high level.

You should familiarize yourself with the [CF Samples repository](https://github.com/cloudfoundry-samples) to build demos that are applicable to your client.  


# Agenda
The workshop was designed to be delivered in two 4-hour sessions.  The first day aimed and deploying applications, and the second day on operations during runtime.  There are anchor slides with basic diagrams, but they must be delivered alongside platform demonstrations, whiteboarding and open dialog.  The slides to not stand on their own.

**NOTE**: This is not yet structured as a hands-on workshop.  There are no user exercises at this time.  This will be developed.

### Day 1 - App Deployment
* [Cloud Native Platforms](./01_CloudNative/readme.md)
  * Traditional vs. IAAS vs. PAAS
  * TAS Benefits
  * 12-Factor
* [Quick Demo of TAS](./02_QuickDemo/readme.md)
  * DEMO: `cf push` with description of process
  * Apps Manager Walkthrough
* [Buildpacks](./03_Buildpacks/readme.md)
  * How Apps are staged
  * Buildpack Review
    * What / Why of buildpacks
    * LCM of Buildpacks
    * DEMO: Available Buildpacks
    * Walkthrough of Java Buildpack GITHUB
    * Configuration Options
* [Deploying with Application Manifests](./04_Manifests/readme.md)
  * Basic Manifest example
  * Adding Environment variables
  * Advanced Example walkthrough
* [Application Networks and Routing](./05_Networking/readme.md)
  * Architecture overview and Network flow
  * Routes and Domains
  * TCP Routing
  * DEMO: Blue-Green Deployment
  * Container networking
    * DEMO: C2C networking with dogs and cats
* [Services](./06_Services/readme.md)
  * Review of Services (Marketplace vs UPS)
  * How services are delivered
  * DEMO: Provision Marketplace service and show environment
  * DEMO: Provision UPS and show app environment

### Day 2 - Application Operations
* [TAS Architecture Review](./07_ArchReview/readme.md)
* [CI/CD](./08_CICD/readme.md)
  * CI/CD best practices with TAS
  * DEMO: ADO Example Template
* [Basic Application Operations](./09_AppOps/readme.md)
  * Start / Stop / Restart / Restage
  * Restart vs. Restage
  * Advanced Operations and Plugins
* [Orgs, Spaces, Quota and Entitlements](./10_OrgSpaceQuota/readme.md)
  * Tenancy and Org/Space Hierarchy
  * Roles
  * Quota Resources
  * CPU Entitlement
* [Health Checks](./11_HealthCheck/readme.md)
  * Health Check Categories
  * Health Check Types
* [Application Logging](./12_Logging/readme.md)
  * TAS Logging Architecture
  * DEMO: On-Platform Log Monitoring
  * Integrations
* [Application Metrics](./13_Metrics/readme.md)
  * DEMO: On-Platform App Metrics
  * Integrations
  * AOA Integration (Optional)
* [Common Challenges and Discussion](./14_Challenges/readme.md)

# Slide Deck (Broadcom Only)
[Google Sheets LINK](https://docs.google.com/presentation/d/1p4WGFhp0dRnb1-GPNesBubDjfELID5Pz/edit?usp=sharing&ouid=101770750454829329029&rtpof=true&sd=true)

