LXD allows you to modify the container to make your container run special software with special needs. For example, by default LXD can't run Docker or containerd for security reasons (because by itself, it's a container too); But we can change that!

Let's make your container run docker by using this command:

`lxc config set killercoda security.nesting true`{{execute}}

You can also pass the same configuration when creating a new container to make your life easier:

`lxc launch ubuntu c1-with-nesting-on -c security.nesting=true`{{execute}}

`security.nesting` is a flag to allow containers in LXD to run nested cgroups as our instance uses cgroups and namespaces too.

To know all the configuration flags for the containers, consult the [documentation for LXD or the manpages](https://documentation.ubuntu.com/lxd/en/latest/howto/instances_configure/).

Now with the security flag checked, go ahead and try to run Docker or containerd inside `killercoda`!

`lxc exec killercoda -- /bin/bash`{{execute}}

`zypper install nerdctl containerd`{{execute}}

`systemctl enable --now containerd`{{execute}}

`nerdctl info`{{execute}}