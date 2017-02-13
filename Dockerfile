FROM rocker/rstudio:latest

MAINTAINER "Sean Abbott" sabbott@finmason.com

RUN apt-get update && apt-get install -y \
        libnss-sss \
        libpam-sss \
        libpq-dev \
        openssh-client \
        python-dev \
        python-pip \
        sssd \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt

COPY sss_client.pam /etc/pam.d/sss_client
