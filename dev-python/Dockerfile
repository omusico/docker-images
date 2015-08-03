#Dockerfile to generate Python Dev Environment
FROM pcompton/dev-base:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.08.03

USER root

RUN apt-get update && apt-get install -y python3 python3-dev python3-nose python3-mock idle-python3.4 ipython3 ipython3-notebook python3-numpy python3-scipy python3-matplotlib python3-pip python3-crypto python3-doc python3-setuptools && apt-get clean
RUN easy_install3 statsmodels

USER pcompton

CMD /bin/bash
