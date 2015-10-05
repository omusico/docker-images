#Dockerfile to generate artifactory instance
FROM pcompton/oracle-server-jre:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.10.05
ENV ARTIFACTORY_VERSION 4.1.3
ENV ARTIFACTORY_HOME /opt/artifactory

RUN dnf install -y unzip
RUN curl -fL -o /jfrog-artifactory-oss-${ARTIFACTORY_VERSION}.zip https://bintray.com/artifact/download/jfrog/artifactory/jfrog-artifactory-oss-${ARTIFACTORY_VERSION}.zip \
  && unzip jfrog-artifactory-oss-${ARTIFACTORY_VERSION}.zip \
  && mv artifactory-oss-${ARTIFACTORY_VERSION} /opt/artifactory \
  && rm jfrog-artifactory-oss-${ARTIFACTORY_VERSION}.zip

ENV PATH ${ARTIFACTORY_HOME}/bin:$PATH

VOLUME ["${ARTIFACTORY_HOME}/data"]

EXPOSE 8081
CMD ${ARTIFACTORY_HOME}/bin/artifactory.sh
