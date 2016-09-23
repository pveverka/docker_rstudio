# docker_rstudio
Finmasonized RStudio-Server in a docker container.

## Running
In order to use users from the host machine, this container uses this https://jhrozek.wordpress.com/2015/03/31/authenticating-a-docker-container-against-hosts-unix-accounts/ as a suggestions.  All the host files were able to be used verbatim.  On ubuntu, you need `sssd-common sssd-proxy sssd` packages installed.

Then, to run, do `docker run -d -p 8787:8787 -v /home:/home -v /var/lib/sss/pipes/:/var/lib/sss/pipes/:rw finmason/docker_rstudio`
