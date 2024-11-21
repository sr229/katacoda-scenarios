
Let's create your first instance. Containers in LXD are the same as Docker, except LXD uses *unmodified* images, contrary to Docker. What does this mean you may ask? It means a LXD container can run a full system in a container, no holds barred.


To pull a new image in LXD, simply run:

`lxc launch fedora killercoda`{{execute}}

where:

 - `launch` is of course the pull and run command, you have two commands in one!
 - `fedora` is the image. This might seem familiar to you, if you come from Docker.
 - `killercoda` is the name of the instance.

 In your local environment, this image will be cached and LXD will just update it, pretty neat right?