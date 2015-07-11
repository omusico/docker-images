#Dockerfile to generate artifactory instance on top of CentOS 7
FROM pcompton/centos-server-jre:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.07.11
ENV ARTIFACTORY_VERSION 3.9.1
ENV ARTIFACTORY_HOME /opt/artifactory

RUN yum install -y unzip
RUN curl -fL -o /artifactory-${ARTIFACTORY_VERSION}.zip https://bintray.com/artifact/download/jfrog/artifactory/artifactory-${ARTIFACTORY_VERSION}.zip \
  && unzip artifactory-${ARTIFACTORY_VERSION}.zip \
  && mv artifactory-${ARTIFACTORY_VERSION} /opt/artifactory \
  && rm artifactory-${ARTIFACTORY_VERSION}.zip

ENV PATH ${ARTIFACTORY_HOME}/bin:$PATH

EXPOSE 8081
CMD artifactory.sh
