1. Use the puppet-iis module to provision a website called “My Website” <br> *Done.*

2. You’ll want to deploy that module on a given node. <br>*Done. deploying to 'Node1'.*

3. Structure your solution to ensure – roles and profiles are accounted for <br>
*Node1 is directly using profile only.  Get an error when trying to apply the node->role->profile:*
`Could not find class ::iis::features_application_deployment`

4. Note down what limitations the current puppet-iis module has and how would you enhance it.

*Module does not clean up sites when they are removed.  Would be nice to have an 'explicit option'  which would remove IIS sites which are no longer in config.
Module requires you specify a valid app pool.  
Does not add server windows feature for you, have to DIY.  Would be nice if it added the feature for you.*


