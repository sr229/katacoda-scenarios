LXD allows you to modify the container to make your container run special software with special needs. By default LXD can't run Docker for security reasons, for example. But hey, we can change that!

Let's make your container run docker by doing this simple flag:

`lxc config set killercoda security.nesting true`{{execute}}

You can also pass the same configuration when creating a new container to make your life easier:

`lxc launch ubuntu c1-with-nesting-on -c security.nesting=true`{{execute}}

`security.nesting` is a flag to allow containers in LXD to run nested cgroups. This is essential for Docker since they use cgroups as well (remember, Docker also has a shared history with LXD).

To know all the configuration flags for the containers, consult the documentation for LXD or the manpages.

Now with the security flag checked, go ahead and try to run Docker inside `katacoda`!

_(PS: make sure you have wget installed before running this!)_

`lxc exec killercoda -- /bin/bash`{{execute}}

`wget -O - https://get.docker.com | sh`{{execute}}