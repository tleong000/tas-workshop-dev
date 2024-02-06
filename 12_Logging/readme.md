# Overview
Short-term Application logging retention is provided as a service by TAS for quick diagnosis of application issues.

Quickly demo `cf logs` and the logging UI in apps manager.  Also show `cf events` to show TAS-specific event logs for things like stops, starts, scales and crashes.

These are helpful for quick troubleshooting, but logs will not be retained long term, and you will not be able to see anything past a few hours.  Because of this, it's important to integrate with an external logging service like Splunk or ElasticSearch.  

Reviewing the discussion from yesterday about Services and CUPS, you can bind a syslog-compatible endpoint to your app and logs will flow automatically to that endpoint.

### DEMO NEEDED

Be sure to caution against overly verbose or high-volume logs, as this may have an impact on the platform-wide log flow.  If the customer is using an older version of TAS, you can present the old Loggregator Architecture showing Doppler as the common pipe for all application and platform logs.

Platform Ops may prevent this scenario by creating quotas for log flow.

Newer TAS versions (5.0+) aim to correct this condition with a new shared-nothing logging architecture where logs flow directly from the producing VMs, and don't pass through a common set of VMs.

[Old Logging Architecture](https://docs.vmware.com/en/VMware-Tanzu-Application-Service/5.0/tas-for-vms/loggregator-architecture.html#loggregator-firehose-architecture-1)

[New Logging Architecture](https://docs.vmware.com/en/VMware-Tanzu-Application-Service/5.0/tas-for-vms/loggregator-architecture.html#sharednothing-architecture-2)