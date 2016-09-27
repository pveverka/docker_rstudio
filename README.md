# docker_rstudio
Finmasonized RStudio-Server in a docker container.

## Running
In order to use users from the host machine, this container uses this https://jhrozek.wordpress.com/2015/03/31/authenticating-a-docker-container-against-hosts-unix-accounts/ as a suggestions.  All the host files were able to be used verbatim.  On ubuntu, you need `sssd-common sssd-proxy sssd` packages installed.

Then, to run, do `docker run -d -p 8787:8787 -v /storage/src:/storage/src -v /home:/home -v /var/lib/sss/pipes/:/var/lib/sss/pipes/:rw finmason/docker_rstudio`

Note that this requires SSSD running on the host.  See OPS-113 for details.

## Updating
You can update this yourself!  Here's the steps:

* Modify this dockerfile as needed
* Push the dockerfile to github
* Let docker hub build.  You can see this here: https://hub.docker.com/r/finmason/docker_rstudio/builds/
* When it finishes building, login to analytics, and run: `service rstudio-server stop && docker rm rstudio-server && docker pull finmason/docker_rstudio && service rstudio-server start`
* Boom.  You're running with your new stuff.
* Note that this will not effect your host level python.
