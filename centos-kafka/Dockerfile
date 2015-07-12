#Dockerfile to generate a kafka images on top of CentOS 7
FROM pcompton/centos-jdk:latest
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.07.12
ENV KAFKA_VERSION 0.8.2.1
ENV KAFKA_HOME /opt/kafka
ENV SCALA_VERSION 2.11

RUN curl -fl -o /kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz http://mirrors.advancedhosters.com/apache/kafka/${KAFKA_VERSION}/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz \
  && tar xzf kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz \
  && mv kafka_${SCALA_VERSION}-${KAFKA_VERSION} /opt/kafka \
  && rm kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz

ENV PATH ${KAFKA_HOME}/bin:${PATH}

CMD kafka-server-start.sh
