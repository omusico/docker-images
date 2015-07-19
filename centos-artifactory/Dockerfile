#Dockerfile to generate artifactory instance on top of CentOS 7
FROM pcompton/centos-server-jre:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.07.19
ENV ARTIFACTORY_VERSION 3.9.2
ENV ARTIFACTORY_HOME /opt/artifactory

RUN yum install -y unzip
RUN curl -fL -o /artifactory-${ARTIFACTORY_VERSION}.zip https://bintray.com/artifact/download/jfrog/artifactory/artifactory-${ARTIFACTORY_VERSION}.zip \
  && unzip artifactory-${ARTIFACTORY_VERSION}.zip \
  && mv artifactory-${ARTIFACTORY_VERSION} /opt/artifactory \
  && rm artifactory-${ARTIFACTORY_VERSION}.zip

ENV PATH ${ARTIFACTORY_HOME}/bin:$PATH

VOLUME ["${ARTIFACTORY_HOME}/data"]

EXPOSE 8081
CMD ${ARTIFACTORY_HOME}/bin/artifactory.sh
