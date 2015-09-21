#Dockerfile to generate an elasticsearch node
FROM pcompton/oracle-server-jre:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.09.21
ENV ELASTICSEARCH_VERSION 2.0.0-beta2
ENV ELASTICSEARCH_HOME /opt/elasticsearch-${ELASTICSEARCH_VERSION}

ENV PATH ${ELASTICSEARCH_HOME}/bin:${PATH}

RUN curl -fL https://download.elasticsearch.org/elasticsearch/release/org/elasticsearch/distribution/tar/elasticsearch/${ELASTICSEARCH_VERSION}/elasticsearch-${ELASTICSEARCH_VERSION}.tar.gz | tar -xzC /opt

VOLUME /usr/share/elasticsearch/data

EXPOSE 9200 9300

ENTRYPOINT ${ELASTICSEARCH_HOME}/bin/elasticsearch
