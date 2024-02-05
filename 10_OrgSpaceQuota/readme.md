# Overview
In this section, we will talk about Tenancy in TAS and how resources are separated into Orgs and Spaces.  Use the diagrams in the slides to describe how orgs and spaces work, describe some examples of how they are typcially used to separate app teams or environments.  Mostly, focus on these concepts:

* What are user roles and How User Roles apply to Orgs/Spaces (Org Mge vs Space Mgr, Space Developer vs Space Mgr, etc)
* How Services and Routes can be shared between Spaces, but apps cannot
* How Orgs and Spaces can be assigned a Quota to control consumption.  (Org Managers can set space quota, Platform Ops sets Org Quota)

# Quota
Here we describe the different resources that can have quota limits applied (See Slide for table).  Describe each quota'd resource.

At the end, ask the question "What about CPU?  How do you quota that?"  THen go into CPU entitlement and how CPU entitlement is given based on Memory Allocation.  

# CPU Entitlement
How does CPU entitlement work?  Here we continue the lesson of why CPU utilization is confusing in CF.  Play the [YouTube video](https://www.youtube.com/watch?v=vV87xmxKLeA) for your class, which covers the topic very well.  This [Blog Post](https://www.cloudfoundry.org/blog/better-way-split-cake-cpu-entitlements/) also provides an excellent explanation.