Every Sail-er has a hat! Mine has a fancy dolphin emblem on it with some fountain thingies on it like- 

Oh, where was I? Oh yes!


Hats in sail defines a way for you to modify the project's existing stack already placed.

Our project has a predefined stack in `.sail`, which is a Dockerfile. We can tell sail to use a hat to further extend or overwrite that predefined stack:

`sail run https://github.com/cdr/sshcode -hat <hat>`

Hats can come from GitHub or as a Docker image and you can only wear one hat per stack, so use it wisely!