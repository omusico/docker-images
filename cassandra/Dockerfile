#Dockerfile to generate a cassandra server
FROM pcompton/oracle-server-jre:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.09.21
ENV CASANDRA_VERSION 2.2.1
ENV CASANDRA_HOME /opt/apache-cassandra-${CASANDRA_VERSION}

ENV PATH ${CASANDRA_HOME}/bin:${PATH}

RUN curl -fL http://mirror.cc.columbia.edu/pub/software/apache/cassandra/${CASANDRA_VERSION}/apache-cassandra-${CASANDRA_VERSION}-bin.tar.gz | tar -xzC /opt

VOLUME /var/lib/cassandra

EXPOSE 7000 7001 7199 9042 9160

ENTRYPOINT ${CASANDRA_HOME}/bin/cassandra -f
