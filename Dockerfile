FROM rocker/rstudio:latest

MAINTAINER "Sean Abbott" sabbott@finmason.com

RUN rm -rf /var/lib/apt/lists/ && \
    apt-get update && \
    apt-get install -y libpq-dev sssd libpam-sss libnss-sss python-dev

COPY sss_client.pam /etc/pam.d/sss_client
