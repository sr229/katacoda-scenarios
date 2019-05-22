Alrighty, now we're acquainted with our ship, but we must lead our ship to the treasure trove, and so you shall do it, initiate!

Let's go ahead and point `sail` what project to clone, for example:

`sail run https://github.com/cdr/sshcode`{{execute}}

As you look on how sail does the magic you'll see that it does the following:

- It pulls a Docker image that has the dev tools installed for this code

- It also installs a IDE inside you can access. Normally, it would be using your browser, however, since we're in Katacoda, we're not gonna be getting that privelege.

Be reminded that `sail` only supports Git at the moment, so if you're planning to use Perforce or SVN, it won't work, chief.

Now we got the treasure, let's go ahead and crack 'er open with a tool I proudly call the IDE. go run `sail ls`{{execute}},
grab the port adress and navigate to https://[[HOST_SUBDOMAIN]]-[[KATACODA_HOST]].environments.katacoda.com/ and enter the sail box's port. It should bring you to the IDE now!

