# Overview
After viewing some buildpack configuration options, they my wonder how you apply these configurations.  And generally how to configure your app in general... Manifests is the answer.  Buildpack configurations can be set within TAS manifests along with several other parameters that describe the desired configuration of your application.

Take the audience through several examples of manifests that build up in complexity.  Also flip over to the [reference doc](https://docs.cloudfoundry.org/devguide/deploy-apps/manifest-attributes.html):
* Simple Manifest
* with Env Variables
* with Services
* Multiple apps, multiple processes
* Specifying routes

End with a manifest showing routes... this will tie into the next section of networking and application routing.



