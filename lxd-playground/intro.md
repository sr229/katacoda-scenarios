Welcome to the guided tutorial for Linux Containers (LXD)!

Linux containers is a implementation that uses `cgroups` and namespaces of the Linux kernel. [This used to be Docker's runtime](https://www.docker.com/blog/lxc-vs-docker/) before moving on to their more portable runtime, `containerd`.

Unlike Docker, LXD can run unmodified rootfses and images, meaning, it can run a full system without special modification, contrary to Docker which requires some modifications on the filesystem of the distribution to run, which is championed by some hosting providers as a alternative to KVM-based virtual machines. Additionally, this is also used by Operating Systems such as [chromeOS](https://chromeos.dev/en/linux).

This playground is intended for you to get acquainted of LXD, feel free to learn at your own pace, and discover something new.

If you want to learn more, check out their [website!](https://linuxcontainers.org)