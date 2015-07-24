#Dockerfile to generate base Ubuntu Vivid Vervet
FROM ubuntu:vivid
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.07.24
RUN apt-get update && apt-get -y dist-upgrade
RUN apt-get install -y apt-utils
RUN apt-get install -y aptitude ca-certificates curl && apt-get clean

CMD /bin/bash
