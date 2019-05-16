Welcome to the Linux Containers (LXD) Playground!

Linux containers is a implementation that uses `cgroups` and namespaces of the Linux kernel. This used to be Docker's runtime before moving on to their more portable runtime, `containerd`.

Unlike Docker, LXD can run unmodified rootfses and images, meaning, it can run a full system without special modification, contrary to Docker which requires some modifications on the filesystem of the distribution to run, which is championed by many hosting providers as a alternative to KVM-based virtual machines.

This playground is intended for you to get acquainted of LXD, feel free to learn at your own pace, and discover something new.

If you want to learn more, check out their [website!](https://linuxcontainers.org)