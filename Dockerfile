FROM rocker/rstudio:latest

MAINTAINER "Sean Abbott" sabbott@finmason.com

RUN rm -rf /var/lib/apt/lists/ && \
    apt-get update && \
    apt-get install -y libpq-dev sssd libpam-sss libnss-sss python-dev openssh-client python-pip

RUN pip install --upgrade numpy==1.11.1 psycopg2==2.6.1 pandas==0.15.1 scikit-learn==0.17.1 sqlalchemy==0.9.9 numpy==1.11.1

COPY sss_client.pam /etc/pam.d/sss_client
