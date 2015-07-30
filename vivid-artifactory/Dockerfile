#Dockerfile to generate artifactory instance on top of Ubuntu
FROM pcompton/vivid-server-jre:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.07.30
ENV ARTIFACTORY_VERSION 3.9.2
ENV ARTIFACTORY_HOME /opt/artifactory

RUN apt-get update && apt-get install -y unzip && apt-get clean
RUN curl -fL -o /artifactory-${ARTIFACTORY_VERSION}.zip https://bintray.com/artifact/download/jfrog/artifactory/artifactory-${ARTIFACTORY_VERSION}.zip \
  && unzip artifactory-${ARTIFACTORY_VERSION}.zip -d /opt && rm artifactory-${ARTIFACTORY_VERSION}.zip

ENV PATH ${ARTIFACTORY_HOME}/bin:$PATH

VOLUME /opt/artifactory/data

EXPOSE 8081
CMD ${ARTIFACTORY_HOME}/bin/artifactory.sh
