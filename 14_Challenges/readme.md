# Overview
Here we talk about specific challenges we've seen with app teams that are new to the platform.  Some ideas...

### Health Check Timeouts
Many applications using custom HTTP health checks will attempt for that check to be exhaustive, testing many different facets of the app to ensure 100% healthiness.  If these checks take too long, the check will timeout and assume a failure.  Ensure developers are not creating complex healthchecks or they are tuning Health Check invocation timeouts.

### DNS-Based Load balancing and Failover
Many application teams use a DNS-based load balancer (GLB) to manage multi-site redundancy and automated failover.  This means a Load Balancer will perform regular health checks of your application, and if it fails at one site, it will remove that site's IP addresses from a DNS record so a client will no longer attempt connections there.  THe issue here is that updating DNS is slow, and requires the clients to flush DNS cache based on the TTL record.  If a failover happens too quickly, a client may receive timeouts or 500 errors before their cache flushes.

### Loggregator/Doppler Exhaustion
As explained in the logging session, for older versions of TAS all application and platform logs flow through a single pipe that may become exhuasted at times.  Developers must do their best to reduce the volume of logs produced as they could have an impact on the entire platform as well as other dev teams.  THis condition is becoming less common as the "Shared-nothing" architecture of TAS 5 moving into place, as well as more controls being placed on Developer Orgs via log Quotas.

### Application Access and `cf ssh`

### CPU Utilization 
Review the problems with viewing CPU utilization as reported from the CLI/AppsManager and using it as input for autoscaling rules.

### Large Apps and Application Sizing
TAS allows for fairly large application sizes, however running large applications in TAS can be problematic in a number of ways.  For instance it will be harder to schedule an app on Diego Cells that are close to full capacity.  Also, startup may take longer resulting in failed application start HC.

### 12-Factor Misalignment

### Application Performance (Noisy Neighbor)

### Buildpack LCM

### Local Development vs. TAS (But... it works on local)
