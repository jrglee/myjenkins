# Jenkins on Docker for local dev

Run `build-container.sh` to create a jenkins image called `myjenkins`. 
Start the container with `run.sh`, a local folder called `jenkins` will be created to sync the Jenkins home folder.

It comes with
* phantomjs
* git plugin
* green balls
* build monitor
* gradle
 
Java 8 has to be installed through Jenkins. The base image comes with Java 7.
