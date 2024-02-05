# Overview
Tying in the concept of routing from the last manifest showed, devs are free to choose URLs within the domains that are available to the foundation.  How does that work?  Let's discuss...

Time to go a bit into platform architecture.  Discuss the TAS front door with local load balancers that own IPs that resolve from a wildcard domain in DNS. This allows for any url within a domain to be directed to the front door IPs of the foundation.  Custom domains are possible as well, but they need to be configured individually.

Once through the front LB, traffic will pass to the GoRouters.  These carry a route tables linking your chosen URL/path to the IPs and Ports of your application instances running on the diego cells.

Describe how Routing works and how you can assign an FQDN or FQDN/Path to an application for proper routing through the gorouters.  If appropriate, talk about TCP routing as well and how Ports are reserved.

# Blue-Green Deployment
Express the sheer power of this capability.  As possibly the best example of how this can be used, would be a Blue-Green deployment.  CF PUSH is an service-impacting command, and downtime will occur as the app is staged and deployed on top of the running app.  Blue/Green can help.  Animated slide will display how this works to upgrade or push a new version of an app with zero downtime, the ability to fully test, and rapid rollback.

**This is one of the most powerful capabilities and demos in this session.  Take time to focus on this and explain it fully.**

Demo Blue-Green Deployment with the test-app.  Demo Magic script: [blue-green.sh](./blue-green.sh)

# Application network flow and C2C
In slide, describe hairpin path for one app to talk with another app.  This is sometimes not ideal and apps want to talk directly.  C2C allows it.

Describe C2C:
* Internal DNS round robin to route directly to apps within space or in different space/org.
* App-Aware security policy that defines which apps can talk to which apps (developer controlled)

DEMO [cats and dogs without Service Discovery](https://github.com/cloudfoundry-attic/cf-networking-examples/blob/master/docs/c2c-no-service-discovery.md)

Demo magic script: [c2c.sh](./c2c.sh)

# Break?
This is a good time to break as services is next and is another lengthy discussion.