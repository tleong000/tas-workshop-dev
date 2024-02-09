# Overview
Here we talk about specific challenges we've seen with app teams that are new to the platform.  Some ideas...

### Health Check Timeouts
Many applications using custom HTTP health checks will attempt for that check to be exhaustive, testing many different facets of the app to ensure 100% healthiness.  If these checks take too long, the check will timeout and assume a failure.  Ensure developers are not creating complex healthchecks or they are tuning Health Check invocation timeouts.

### DNS-Based Load balancing and Failover
Many application teams use a DNS-based load balancer (GLB) to manage multi-site redundancy and automated failover.  This means a Load Balancer will perform regular health checks of your application, and if it fails at one site, it will remove that site's IP addresses from a DNS record so a client will no longer attempt connections there.  THe issue here is that updating DNS is slow, and requires the clients to flush DNS cache based on the TTL record.  If a failover happens too quickly, a client may receive timeouts or 500 errors before their cache flushes.

### Loggregator/Doppler Exhaustion
As explained in the logging session, for older versions of TAS all application and platform logs flow through a single pipe that may become exhuasted at times.  Developers must do their best to reduce the volume of logs produced as they could have an impact on the entire platform as well as other dev teams.  THis condition is becoming less common as the "Shared-nothing" architecture of TAS 5 moving into place, as well as more controls being placed on Developer Orgs via log Quotas.

### Application Access and `cf ssh`
As a new development team that is migrating from IaaS or a VM-based deployment, they may be used to accessing the Linux console as a management tactic for their application.  Maybe change a config file, restart a process, run  `ps -ef` to see the process running.  This is still possible in TAS using `cf ssh` (although sometimes not permitted by security).  Definitely caution users against this, as it's a crutch and sometimes prevents them from implementing proper monitoring or logging solutions.  

### CPU Utilization 
Review the problems with viewing CPU utilization as reported from the CLI/AppsManager and using it as input for autoscaling rules.

### Large Apps and Application Sizing
TAS allows for fairly [large application sizes](https://docs.vmware.com/en/VMware-Tanzu-Application-Service/5.0/tas-for-vms/deploy-apps-large-app-deploy.html), however running large applications in TAS can be problematic in a number of ways.  Promote the de-coupling of large apps into smaller microservices.

### 12-Factor Misalignment
TAS was created as the ideal platform to efficiently host webapps and microservices that align to the cloud native principals of [12-factor](https://12factor.net).  Because TAS provides the easiest and shortest path to production for these types of workloads, it may be desireable to offer it to other workloads that do not align to those principals.  We would caution development teams and Platform Engineers from onboarding these apps without at least considering their design to ensure they are a proper fit.  Failure to do so may cause issues down the road when TAS maintenance occurs, rapid scaling for your app is required or a number of other events that require cloud native design.

### Application Performance (Noisy Neighbor)
TAS is a shared platform where a large population of applications share a common pool of compute and network resources.  It is therefore not uncommon for bursting or compute-heavy workloads to cause performance issues for other apps on the platform.  Especially during maintenance or unplanned outages where capacity of the platform is reduced.  It will be very important for platform engineers to identify noisy and bursting applications so they can be notified and potentially isolated.

#### Tanzu Intelligence to the rescue!
Use this as an opportunity to promote full stack observability using Tanzu Intelligence products like Aria Operations for Applications.  AOA integrates with TAS which allows for more immediate RCA of performance bottlenecks or identification of noisy and bursting applications.

### Buildpack LCM
Application owners no longer have full control of their software stack.  They need to partner with platform engineers who are now responsible for buildpack updates and lifecycle management.  It will be important for app teams to integrate buildpack testing into their normal maintenance and upgrade processes to ensure the application stays up to date with the latest buildpack changes.

### Local Development vs. TAS (But... it works on local)
It is fairly common for a developer to build their code on their local IDE and then test it locally on their workstation using a locally installed JRE.  It is also fairly common for that code to then be pushed to a TAS environment where it does not work in the same way.  It will be important for developers to understand that TAS provides an environment that may not match the developer's workstation, and testing within a TAS platform will be important.

You could try and get closer to TAS locally by using the CF-DEV CLI plugin, which tries to replicate a CF environment locally using Docker.  