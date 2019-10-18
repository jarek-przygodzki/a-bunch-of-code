# WildFly HA cluster with Docker


## Inspect cluster state

```
/subsystem=jgroups/channel=ee:read-attribute(name=view) 
```
This shows the current coordinator, monotonically increasing view ID, number of cluster members, followed by a complete list of cluster members' logical names.

