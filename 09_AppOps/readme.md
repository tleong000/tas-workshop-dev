# Overview
This section is to cover the basic commands and operations that take action against a running application.  We will also cover AutoScaling in this document.

Describe the basic commands that can be done against a running application and what they mean:
* START
* STOP
* RESTART
* RESTAGE
* SCALE
* DELETE

Make sure to cover the difference between RESTART and RESTAGE.  

Some Advanced commands:
* RESTART-APP-INSTANCE
* ENV
* SET-ENV
* UNSET-ENV

# AutoScaling
Walk through the autoscaling UI in apps manager.  Highlight following parameters:
* Min/Max Instance
* Min/Max grow/shrink by
* Scaling Rules
This is a good time to start discussing recommended scaling factors and the problems with CPU utilization in TAS.  We will cover this more in the quota section, but help them understand why Application-centric metrics(response time, queue depth, custom app) are preferred.

# AutoScaling DEMO
NEED A DEMO HERE.   Hopefully one that scales based on an application metric.