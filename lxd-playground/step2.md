
Let's create your first instance. Containers in LXD are the same as Docker, except LXD uses *unmodified* images, contrary to Docker. What does this mean you may ask? It means a LXD container can run a full system in a container, no holds barred.


To pull a new image in LXD, simply run:

`lxc launch images:rockylinux/9 killercoda`{{execute}}

where:

 - `launch` is of course the pull and run command, you have two commands in one!
 - `images:rockylinux/9` is the image with the remote included. This is slightly different to what you're used to with Docker.
 - `killercoda` is the name of the instance.

 You can swap out the image with your preferred one if you wish! You can look through [LXD's official image list](https://images.lxd.canonical.com/) or [provide your own](https://documentation.ubuntu.com/lxd/en/latest/howto/images_remote/).

 In your local environment, this image will be cached and LXD will just update it, pretty neat right?