Yerrighty, Sail-er now you know how to get around your contraption, now how about getting deeper inside of it?

To do just that, we can do `sail shell`:

`sail shell https://github.com/cdr/sshcode`{{execute}}

`sail shell` executes a interactive terminal session inside the same confined space your code lies on, you can run  any command you like in there. When done, exit the container and let's move on!

We can also make your Sail box more unique, let's go ahead and run `sail edit`.

`sail edit https://github.com/cdr/sshcode`{{execute}}

This should open a editor to edit the Dockerfile associated with the project. This should allow you to change the environment to your liking.

However, we don't do that here! You already have a IDE open, you can edit from there instead!